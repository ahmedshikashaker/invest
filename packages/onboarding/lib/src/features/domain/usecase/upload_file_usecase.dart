import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../../data/models/get_step_details_request.dart';
import '../../data/models/step.dart';
import '../../data/repository/step_repository.dart';
import 'package:kib_design_system/kib_design_system.dart';

@injectable
class UploadFileUsecase {
  final StepRepository repository;

  const UploadFileUsecase(this.repository);

  Future<Either<AppExceptions, FileInfo>> uploadFile(
      FilePickerResult file, String fileName) async {
    return await repository.uploadFile(file: file, fileName: fileName);
  }
}
