import '../../models/onboarding_steps_model.dart';
import 'package:invest_common/common.dart';

abstract class OnboardingStepsRemoteDataSource {
  Future<APIResponse<StepSummaryModel>> getOnboardingSteps(String onBoardingFlowId);
}
