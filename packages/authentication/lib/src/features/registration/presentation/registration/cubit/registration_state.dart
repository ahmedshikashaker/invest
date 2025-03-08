import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'registration_state.freezed.dart';

@freezed
abstract class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = _Initial;
  const factory RegistrationState.loading() = _Loading;
  const factory RegistrationState.onEmailChanged(String email) =
      _OnEmailChanged;
  const factory RegistrationState.onPasswordChanged(String password) =
      _OnPassworsChanged;
  const factory RegistrationState.onConfirmPasswordChanged(String password) =
      _OnConfirmPassworsChanged;
  const factory RegistrationState.error(
    AppExceptions error,
    Function callback,
  ) = _Error;
  const factory RegistrationState.success(String actionToken) = _Success;
}
