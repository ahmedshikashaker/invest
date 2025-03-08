import 'package:onboarding/src/config/di/injection_module.dart';
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/extensions/section_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:injectable/injectable.dart';
import 'package:onboarding/src/features/data/models/section.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:onboarding/src/features/domain/managers/errors_manager.dart';

@Injectable()
class SectionValidator {
  final AnswersManager _answersManager;
  final ErrorsManager _errorsManager;
  bool _validationEnabled = false;
  Section? _section;

  SectionValidator(this._answersManager, this._errorsManager);

  initListener(Section section) {
    _section = section;
    _answersManager.answersNotifier.addListener(_validateIfEnabled);
  }

  void _validateIfEnabled() {
    if (_validationEnabled) {
      _validateRequiredSectionFields();
    }
  }

  void enableValidation() {
    _validationEnabled = true;
    _validateRequiredSectionFields();
  }

  void disableValidation() {
    _validationEnabled = false;
    _errorsManager.clearAll();
  }

  void validateField(Field field) {
    if (!_shouldValidateField(field)) return null;

    final value =_answersManager.currentAnswers[field.id];
    final error = field.getFieldError(value);
    if (error != null) {
      _errorsManager.setError(field.id, error);
    } else {
      _errorsManager.clearError(field.id);
    }
  }

  bool _shouldValidateField(Field field) {
    return _validationEnabled &&
        field.isVisible(_answersManager.currentAnswers);
  }

  void _validateRequiredSectionFields() {
    for (final field in _section?.allFields ?? []) {
      validateField(field);
    }
  }

  bool get isValid =>
      !_validationEnabled ||
      _section?.allFields
              .every((field) => _errorsManager.currentErrors[field.id] == null) ==
          true;

  void dispose() {
    _answersManager.answersNotifier.removeListener(_validateIfEnabled);
  }
}
