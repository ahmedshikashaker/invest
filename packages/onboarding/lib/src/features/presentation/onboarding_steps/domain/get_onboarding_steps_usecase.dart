import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/models/onboarding_steps_model.dart';
import '../data/repository/onboarding_steps_repository.dart';

@Injectable()
class GetOnboardingStepsUsecase implements BaseUseCase<void, String> {
  final OnboardingStepsRepository repository;

  const GetOnboardingStepsUsecase(this.repository);

  @override
  Future<Either<AppExceptions, StepSummaryModel>> call(
      String onBoardingFlowId) async {
    return await repository.getOnboardingSteps(onBoardingFlowId);
  }
}
