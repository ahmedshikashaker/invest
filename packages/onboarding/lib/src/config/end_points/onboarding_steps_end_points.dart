class OnboardingStepsEndpoints {
  static const _onboarding = "/onboarding";
  static const _kibInvest = "/kib-invest";

  static const String onboardingStepsEndPoint =
      '$_onboarding/flows/{flowsId}/steps';

  static const String getStepDetailsEndPoint = '$_onboarding/flows/{flowsId}/steps/{stepId}';
  static const String uploadFileEndPoint = '$_onboarding/files';

  static const String getIconEndPoint = '$_onboarding/icons/';

}
