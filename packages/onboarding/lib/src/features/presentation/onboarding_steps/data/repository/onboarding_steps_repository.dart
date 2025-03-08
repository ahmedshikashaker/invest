import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../models/onboarding_steps_model.dart';

abstract class OnboardingStepsRepository {
  Future<Either<AppExceptions, StepSummaryModel>> getOnboardingSteps(
      String flowId);
}
