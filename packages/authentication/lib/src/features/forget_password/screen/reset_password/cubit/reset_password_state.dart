import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'reset_password_state.freezed.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _Initial;

  const factory ResetPasswordState.error(
      AppExceptions error, Function callback) = _Error;

  const factory ResetPasswordState.businessError(AppExceptions error) =
      _BusinessError;

  const factory ResetPasswordState.loading() = _Loading;

  const factory ResetPasswordState.successForgetPasswordReset(
          ForgetPasswordResetResponseModel model) =
      _SuccessForgetPasswordResetState;

  const factory ResetPasswordState.onCivilIdChanged(model) =
      _OnCivilIdChangedState;

  const factory ResetPasswordState.onPasswordChanged(model) =
      _OnPasswordChangedState;

  const factory ResetPasswordState.onConfirmPasswordChanged(model) =
      _onConfirmPasswordChangedState;

  const factory ResetPasswordState.onMobileNumberChanged(model) =
      _OnMobileNumberChangedState;
}
