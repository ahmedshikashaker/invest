import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'onboarding_steps_state.freezed.dart';

@freezed
abstract class OnboardingStepsState with _$OnboardingStepsState {
  const factory OnboardingStepsState.initial() = _Initial;

  const factory OnboardingStepsState.errorOnboardingSteps(
      AppExceptions error, Function callback) = _ErrorOnboardingSteps;

  const factory OnboardingStepsState.businessErrorOnboardingSteps(
      AppExceptions error) = _BusinessErrorOnboardingSteps;

  const factory OnboardingStepsState.authShareDateState(bool isChecked) =
      _authShareDateState;

  const factory OnboardingStepsState.loadingOnboardingSteps() =
      _LoadingOnboardingSteps;

  const factory OnboardingStepsState.successfullyOnboardingSteps() =
      _SuccessfullyOnboardingSteps;
}
