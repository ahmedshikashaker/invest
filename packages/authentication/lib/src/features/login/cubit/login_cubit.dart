import 'package:authentication/src/features/login/data/models/login_response.dart';
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import '../data/models/login_request.dart';
import '../domain/login_usecase.dart';
import 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._loginUsecase) : super(const LoginState.initial());

  final LoginUsecase _loginUsecase;
  String emailId = '';
  String password = '';

  bool get isValidToLogin => password.isNotEmpty && emailId.isMail;
  LoginResponseModel? loginResponseModel;

  void onEmailIdChanged(String value) {
    emailId = value;
    emit(LoginState.onEmailIdChanged(value));
  }

  void onPasswordChanged(String value) {
    password = value;
    emit(LoginState.onPasswordChanged(value));
  }

  Future<void> login() async {
    LoginRequest loginRequest = LoginRequest(
      password: password,
      email: emailId,
    );
    emit(const LoginState.loading());
    emit((await _loginUsecase.login(loginRequest)).fold((error) {
      if (error is NetworkException) {
        return error.maybeMap(
          orElse: () => LoginState.error(error, login),
          businessError: (error) => LoginState.businessError(error),
        );
      }
      return LoginState.error(error, login);
    }, (responseData) {
      loginResponseModel = responseData;
      return LoginState.successLogin((responseData));
    }));
  }

  bool get isPaciApproved =>
      loginResponseModel?.civilIdInfo?.paciStatus == PaciAuthStatus.approved;
}
