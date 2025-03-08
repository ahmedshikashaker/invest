import 'dart:io';

import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/models/field.dart';

import '../../models/get_step_details_request.dart';
import '../../models/step.dart';

abstract class StepRemoteDataSource {
  Future<APIResponse<Step>> getStepDetails(
      {required GetStepDetailsRequest getStepDetailsRequest});

  Future<APIResponse<FileValue>> uploadFile({required List<int> file , required String filename});
}
