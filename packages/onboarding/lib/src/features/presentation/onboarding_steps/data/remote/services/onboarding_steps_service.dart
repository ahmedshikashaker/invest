import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/config/end_points/onboarding_steps_end_points.dart';

import 'package:retrofit/retrofit.dart';

import '../../models/onboarding_steps_model.dart';

part 'onboarding_steps_service.g.dart';

@RestApi()
@injectable
abstract class OnboardingStepsService {
  @factoryMethod
  factory OnboardingStepsService(Dio dio) = _OnboardingStepsService;

  @GET(OnboardingStepsEndpoints.onboardingStepsEndPoint)
  Future<APIResponse<StepSummaryModel>> getOnboardingSteps(
    @Path('flowsId') String onBoardingFlowId,
  );
}
