import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

import '../data/models/login_response.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.error(AppExceptions error, Function callback) =
  _Error;

  const factory LoginState.businessError(AppExceptions error) = _BusinessError;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.successLogin(LoginResponseModel Login) = _SuccessPostLoginState;

  const factory LoginState.onEmailIdChanged(Login) = _OnEmailIdChangedState;

  const factory LoginState.onPasswordChanged(Login) = _OnPasswordChangedState;
}
