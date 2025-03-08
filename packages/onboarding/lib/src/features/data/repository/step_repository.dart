import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../models/get_step_details_request.dart';
import '../models/step.dart';
import 'package:kib_design_system/kib_design_system.dart';

abstract class StepRepository {
  Future<Either<AppExceptions, Step>> getStepDetails({
    required GetStepDetailsRequest getStepDetailsRequest,
  });

  Future<Either<AppExceptions, FileInfo>> uploadFile(
      {required FilePickerResult file, required String fileName});
}
