import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../models/onboarding_steps_model.dart';
import '../remote/sources/onboarding_steps_remote_data_source.dart';
import 'onboarding_steps_repository.dart';

@Injectable(as: OnboardingStepsRepository)
class AdvisoryRepositoryImpl extends OnboardingStepsRepository {
  final OnboardingStepsRemoteDataSource _remoteDataSource;

  AdvisoryRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppExceptions, StepSummaryModel>> getOnboardingSteps(
      String onBoardingFlowId) async {
    try {
      final response = await _remoteDataSource.getOnboardingSteps(onBoardingFlowId);
      return right(response.data);
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
