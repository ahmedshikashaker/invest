import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/extensions/value_notifier_extentions.dart';
import 'package:flutter/foundation.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/data/models/group.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:onboarding/src/features/domain/managers/errors_manager.dart';

@Injectable()
class StepSelectors {
  final AnswersManager _answersManager;
  final ErrorsManager _errorsManager;

  StepSelectors(this._answersManager, this._errorsManager);

  ValueListenable<dynamic> selectAnswerById(String fieldId) =>
      _answersManager.answersNotifier.select((answers) => answers[fieldId]);

  ValueListenable<String?> selectErrorById(String fieldId) =>
      _errorsManager.errorsNotifier.select((errors) => errors[fieldId]);

  // Select multiple answers
  ValueListenable<Map<String, dynamic>> selectAnswersByIds(
      List<String> fieldIds) {
    return _answersManager.answersNotifier.select((answers) =>
        Map.fromEntries(fieldIds.map((id) => MapEntry(id, answers[id]))));
  }

  // Select multiple errors
  ValueListenable<Map<String, String>> selectErrorsByIds(
      List<String> fieldIds) {
    return _errorsManager.errorsNotifier.select((errors) =>
        Map.fromEntries(fieldIds.map((id) => MapEntry(id, errors[id] ?? ''))));
  }

  ValueListenable<bool> selectGroupHasVisibleFields(Group? group) {
    return _answersManager.answersNotifier.select((answers) {
      return group?.fields.any((field) => field.isVisible(answers)) ?? false;
    });
  }

  ValueListenable<bool> selectOptionsHasVisibleFields(
      String optionValue, String fieldId) {
    return _answersManager.answersNotifier.select((answers) {
      if (answers[fieldId] == null) {
        return false;
      }
      if (answers[fieldId] is List) {
        return (answers[fieldId] as List).contains(optionValue);
      } else {
        return answers[fieldId] == optionValue;
      }
    });
  }

  ValueListenable<({dynamic answer, String? error})> selectFieldState(
      String fieldId) {
    return MergedValueListenable(
      [_answersManager.answersNotifier, _errorsManager.errorsNotifier],
      () => (
        answer: _answersManager.currentAnswers[fieldId],
        error: _errorsManager.currentErrors[fieldId],
      ),
    ).select((state) => state);
  }
}
