part of 'section_cubit.dart';

/// States for the section cubit
@freezed
class SectionState with _$SectionState {
  /// Initial state
  const factory SectionState.initial() = _Initial;
  
  /// Error state with a callback for retry
  const factory SectionState.error({
    String? error,
    Function? callback
  }) = _Error;
  
  /// Business error state
  const factory SectionState.businessError({
    required AppExceptions error
  }) = _BusinessError;
  
  /// Loading state for all async operations
  const factory SectionState.loadingAction() = _LoadingAction;
  
  /// Loaded state after successful operations
  const factory SectionState.loadedAction() = _LoadedAction;
  
  /// File upload states - legacy but kept for compatibility
  const factory SectionState.errorUploadFile(AppExceptions error, Function callback) =
  _ErrorUploadFile;
  
  const factory SectionState.businessErrorUploadFile(AppExceptions error) = _BusinessErrorUploadFile;
  
  const factory SectionState.loadingUploadFile() = _LoadingUploadFile;
  
  const factory SectionState.successUploadFile(FileInfo file) = _SuccessUploadFile;
}
