import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'personal_details_register_state.freezed.dart';

@freezed
abstract class PersonalDetailsRegistrationState
    with _$PersonalDetailsRegistrationState {
  const factory PersonalDetailsRegistrationState.initial() = _Initial;
  const factory PersonalDetailsRegistrationState.loading() = _Loading;
  const factory PersonalDetailsRegistrationState.onCivilIdChanged(
      String civilId) = _OnCivilIdChanged;
  const factory PersonalDetailsRegistrationState.onMobileNumberChanged(
      String mobile) = _OnMobileNumberChanged;
  const factory PersonalDetailsRegistrationState.error(
    AppExceptions error,
    Function callback,
  ) = _Error;
  const factory PersonalDetailsRegistrationState.success(String actionToken) =
      _Success;
  const factory PersonalDetailsRegistrationState.successfullyCreateUser() =
      _SuccessfullyVerifyMobileNumber;
}
