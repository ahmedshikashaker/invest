import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import '../../../domain/forget_password_reset_usecase.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this._forgetPasswordResetUsecase)
      : super(const ResetPasswordState.initial());

  final ForgetPasswordResetUsecase _forgetPasswordResetUsecase;

  String actionToken = '';
  String password = '';
  String confirmPassword = '';

  bool get isValidToContinue =>
      isPasswordMatching && isValidLength && isValidPassword;

  bool get isPasswordMatching =>
      password.isNotEmpty && confirmPassword == password;

  bool get isValidLength => password.length >= 8 && password.length < 20;

  bool get isValidPassword {
    final regex = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).+$');
    return regex.hasMatch(password);
  }

  void onPasswordChanged(String value) {
    password = value;
    emit(ResetPasswordState.onPasswordChanged(value));
  }

  void onConfirmPasswordChanged(String value) {
    confirmPassword = value;
    emit(ResetPasswordState.onConfirmPasswordChanged(value));
  }

  Future<void> forgetPasswordReset() async {
    ForgetPasswordResetRequest forgetPasswordResetRequest =
        ForgetPasswordResetRequest(
      actionToken: actionToken,
      newPassword: password,
    );
    emit(const ResetPasswordState.loading());
    emit((await _forgetPasswordResetUsecase(forgetPasswordResetRequest))
        .fold((error) {
      if (error is NetworkException) {
        return error.maybeMap(
          orElse: () => ResetPasswordState.error(error, forgetPasswordReset),
          businessError: (error) => ResetPasswordState.businessError(error),
        );
      }
      return ResetPasswordState.error(error, forgetPasswordReset);
    }, (responseData) {
      return ResetPasswordState.successForgetPasswordReset((responseData));
    }));
  }
}
