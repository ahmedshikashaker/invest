import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

@injectable
class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this._forgetPasswordInitUsecase)
      : super(const ForgetPasswordState.initial());

  final ForgetPasswordInitUsecase _forgetPasswordInitUsecase;

  String civilId = '';
  String mobileNumber = '';

  bool get isValidToContinue =>
      mobileNumber.isNotBlank &&
      civilId.isNotBlank &&
      Validator.isValidKuwaitiMobileNumber(
          mobileNumber.removeWhiteSpace ?? '') &&
      Validator.checkKuwaitiCivilIDFormat(civilId);

  void onCivilIdChanged(String value) {
    civilId = value;
    emit(ForgetPasswordState.onCivilIdChanged(value));
  }

  void onMobileNumberChanged(String value) {
    mobileNumber = value;
    emit(ForgetPasswordState.onMobileNumberChanged(value));
  }

  Future<void> forgetPasswordInit() async {
    ForgetPasswordInitRequest forgetPasswordInitRequest =
        ForgetPasswordInitRequest(
      mobileNumber: mobileNumber.removeWhiteSpace,
      civilId: civilId,
    );
    emit(const ForgetPasswordState.loading());
    emit((await _forgetPasswordInitUsecase(forgetPasswordInitRequest)).fold(
        (error) {
      if (error is NetworkException) {
        return error.maybeMap(
          orElse: () => ForgetPasswordState.error(error, forgetPasswordInit),
          businessError: (error) => ForgetPasswordState.businessError(error),
        );
      }
      return ForgetPasswordState.error(error, forgetPasswordInit);
    }, (responseData) {
      return ForgetPasswordState.successForgetPasswordInit((responseData));
    }));
  }
}
