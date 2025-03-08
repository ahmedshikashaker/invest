import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';

import '../../domain/managers/answers_manager.dart';
import '../../domain/usecase/upload_file_usecase.dart';
import '../sections/cubit/section_cubit.dart';

mixin UploadFileMixin<State> on BlocBase<SectionState> {
  final UploadFileUsecase _uploadFileUsecase = getIt<UploadFileUsecase>();
  final AnswersManager _answersManager = getIt<AnswersManager>();

  Future<void> uploadFile(String fieldId, FilePickerResult? file) async {
    emit(const SectionState.loadingUploadFile());
    if (file != null) {
      emit((await _uploadFileUsecase.uploadFile(file, fieldId)).fold((error) {
        if (error is NetworkException) {
          return error.maybeMap(
            orElse: () => SectionState.errorUploadFile(error, uploadFile),
            businessError: (error) =>
                SectionState.businessErrorUploadFile(error),
          );
        }
        return SectionState.errorUploadFile(error, uploadFile);
      }, (FileInfo responseData) {
        _answersManager.updateAnswer(fieldId, responseData);
        return SectionState.successUploadFile((responseData));
      }));
    }
  }
}
