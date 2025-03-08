import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/data/models/field.dart';

import 'package:retrofit/retrofit.dart';
import 'package:kib_core/kib_core.dart';

import '../../../../config/end_points/onboarding_steps_end_points.dart';
import '../../models/step.dart';

part 'step_service.g.dart';

@RestApi()
@injectable
abstract class StepService {
  @factoryMethod
  factory StepService(Dio dio) = _StepService;

  @GET(OnboardingStepsEndpoints.getStepDetailsEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  Future<APIResponse<Step>> getStepDetails({
    @Path('stepId') required String stepId,
    @Path('flowsId') required String onBoardingFlowId,
  });

  @POST(OnboardingStepsEndpoints.uploadFileEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  @MultiPart()
  Future<APIResponse<FileValue>> uploadFile({
    @Part(fileName: r"${filename}") required List<int> file,
    required String filename,
  });
}

