import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../../data/models/get_step_details_request.dart';
import '../../data/models/step.dart';
import '../../data/repository/step_repository.dart';

@injectable
class GetStepDetailsUsecase {
  final StepRepository repository;

  const GetStepDetailsUsecase(this.repository);

  Future<Either<AppExceptions, Step>> getStepDetails(
      GetStepDetailsRequest getStepDetailsRequest) async {
    return await repository.getStepDetails(getStepDetailsRequest: getStepDetailsRequest);
  }
}
