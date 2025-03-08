import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import '../../models/onboarding_steps_model.dart';
import '../services/onboarding_steps_service.dart';
import 'onboarding_steps_remote_data_source.dart';

@Injectable(as: OnboardingStepsRemoteDataSource)
class OnboardingStepsRemoteDataSourceImpl
    extends OnboardingStepsRemoteDataSource {
  final OnboardingStepsService _onboardingStepsService;

  OnboardingStepsRemoteDataSourceImpl(this._onboardingStepsService);

  @override
  Future<APIResponse<StepSummaryModel>> getOnboardingSteps(
      String onBoardingFlowId) async {
    return await _onboardingStepsService.getOnboardingSteps(onBoardingFlowId);
  }
}
