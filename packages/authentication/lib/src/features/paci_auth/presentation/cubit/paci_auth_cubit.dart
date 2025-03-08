import 'dart:async';
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:authentication/src/features/paci_auth/domain/get_paci_info_usecase.dart';
import 'package:authentication/src/features/paci_auth/domain/init_paci_usecase.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'paci_auth_state.dart';

@injectable
class PaciAuthCubit extends Cubit<PaciAuthState> {
  final InitPaciUseCase _initPaciUseCase;
  final GetPaciInfoUseCase _getPaciInfoUseCase;

  PaciAuthCubit(this._initPaciUseCase, this._getPaciInfoUseCase)
      : super(const PaciAuthState.initial());

  PaciInfoModel? _paciInfoModel;
  PaciInfoModel? get paciInfoModel => _paciInfoModel;

  static const int totalSeconds = 300; // 5 minutes
  static const Duration pollingInterval = Duration(seconds: 10);

  DateTime? _authEndTime;
  Timer? _authTimer;
  Timer? _pollingTimer;
  bool isButtonDisabled = true;


  ///  **Starts authentication & countdown**
  void startAuthentication() {
    _authEndTime = DateTime.now().add(Duration(seconds: totalSeconds));
    _startAuthTimer();
    _startPolling();
    emit(PaciAuthState.timerUpdated(getRemainingTime(), ));
  }

  /// **Gets remaining time dynamically**
  Duration getRemainingTime() {
    if (_authEndTime == null) return Duration.zero;
    return _authEndTime!.difference(DateTime.now()).isNegative
        ? Duration.zero
        : _authEndTime!.difference(DateTime.now());
  }

  /// **Starts authentication countdown**
  void _startAuthTimer() {
    _authTimer?.cancel();
    _authTimer = Timer.periodic(Duration(seconds: 1), (_) {
      if (isClosed) {
        _authTimer?.cancel(); // Stop the timer if the Cubit is closed
        return;
      }

      final remainingTime = getRemainingTime();
      if (remainingTime == Duration.zero) {
        isButtonDisabled = false;
        emit(PaciAuthState.timerUpdated(remainingTime, )); // Enable button
        _authTimer?.cancel();
      } else {
        isButtonDisabled = true;
        emit(PaciAuthState.timerUpdated(remainingTime, ));
      }
    });
  }

  /// **Handles PACI initialization**
  Future<void> initPaci() async {
    _authEndTime = DateTime.now().add(Duration(seconds: totalSeconds));
    _startAuthTimer();
    emit(PaciAuthState.timerUpdated(getRemainingTime(), ));
    final response = await _initPaciUseCase();
    response.fold(
          (error) => emit(PaciAuthState.error(error)),
          (success) => _startPolling(),
    );
  }

  /// **Polls PACI user info every 10 seconds**
  void _startPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(pollingInterval, (_) {
      if (isClosed) {
        _pollingTimer?.cancel(); // Stop polling if the Cubit is closed
        return;
      }
      getPaciInfo();
    });
  }


  Future<void> getPaciInfo() async {
    final response = await _getPaciInfoUseCase();

    response.fold((error) => emit(PaciAuthState.error(error)), (userModel) {
      _paciInfoModel = userModel?.data;
      if (_paciInfoModel == null) return;

      switch (_paciInfoModel?.paciStatus) {
        case PaciAuthStatus.approved:
          _stopPolling();
          isButtonDisabled = true;
          emit(PaciAuthState.paciApproved());
          break;
        case PaciAuthStatus.rejected:
          _stopPolling();
          isButtonDisabled = false;
          emit(PaciAuthState.paciRejected());
          break;
        default:
        // Keep polling
          break;
      }
    });
  }

  /// **Stops polling**
  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }


  /// **Resets the timer**
  void resetTimer() {
    _authEndTime = DateTime.now().add(Duration(seconds: totalSeconds));
    _startAuthTimer();
    isButtonDisabled = true;
    emit(PaciAuthState.timerUpdated(getRemainingTime()));
  }

  @override
  Future<void> close() {
    _authTimer?.cancel();
    _pollingTimer?.cancel();
    return super.close();
  }

}
