import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'forget_password_state.freezed.dart';

@freezed
abstract class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _Initial;

  const factory ForgetPasswordState.error(
      AppExceptions error, Function callback) = _Error;

  const factory ForgetPasswordState.businessError(AppExceptions error) =
      _BusinessError;

  const factory ForgetPasswordState.loading() = _Loading;

  const factory ForgetPasswordState.successForgetPasswordInit(
      ForgetPasswordInitResponseModel model) = _SuccessForgetPasswordInitState;

  const factory ForgetPasswordState.onCivilIdChanged(model) =
      _OnCivilIdChangedState;

  const factory ForgetPasswordState.onPasswordChanged(model) =
      _OnPasswordChangedState;

  const factory ForgetPasswordState.onConfirmPasswordChanged(model) =
      _onConfirmPasswordChangedState;

  const factory ForgetPasswordState.onMobileNumberChanged(model) =
      _OnMobileNumberChangedState;
}
