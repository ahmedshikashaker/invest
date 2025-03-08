import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'verify_forget_password_state.freezed.dart';

@freezed
abstract class VerifyForgetPasswordState with _$VerifyForgetPasswordState {
  const factory VerifyForgetPasswordState.initial() = _Initial;

  const factory VerifyForgetPasswordState.error(
      AppExceptions error, Function callback) = _Error;

  const factory VerifyForgetPasswordState.businessError(AppExceptions error) =
      _BusinessError;

  const factory VerifyForgetPasswordState.loading() = _Loading;

  const factory VerifyForgetPasswordState.successForgetPasswordVerify(
          ForgetPasswordVerifyResponseModel model) =
      _SuccessForgetPasswordVerifyState;


  const factory VerifyForgetPasswordState.onCivilIdChanged(model) =
      _OnCivilIdChangedState;

  const factory VerifyForgetPasswordState.onPasswordChanged(model) =
      _OnPasswordChangedState;

  const factory VerifyForgetPasswordState.onConfirmPasswordChanged(model) =
      _onConfirmPasswordChangedState;

  const factory VerifyForgetPasswordState.onMobileNumberChanged(model) =
      _OnMobileNumberChangedState;
}
