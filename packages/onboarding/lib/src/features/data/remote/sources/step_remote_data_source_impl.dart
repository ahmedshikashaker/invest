import 'dart:io';

import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:file_picker/src/file_picker_result.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/data/models/field.dart';

import '../../models/get_step_details_request.dart';
import '../../models/step.dart';
import '../services/step_service.dart';
import 'step_remote_data_source.dart';

@Injectable(as: StepRemoteDataSource)
class StepRemoteDataSourceImpl extends StepRemoteDataSource {
  final StepService _stepService;

  StepRemoteDataSourceImpl(this._stepService);

  @override
  Future<APIResponse<Step>> getStepDetails(
      {required GetStepDetailsRequest getStepDetailsRequest}) async {
    return await _stepService.getStepDetails(
        stepId: getStepDetailsRequest.stepId,
        onBoardingFlowId: getStepDetailsRequest.onBoardingFlowId);
  }

  @override
  Future<APIResponse<FileValue>> uploadFile(
      {required List<int> file, required String filename}) async {
    return await _stepService.uploadFile(file: file , filename: filename);
  }
}
