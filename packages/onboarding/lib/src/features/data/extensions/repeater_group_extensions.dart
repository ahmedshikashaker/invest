// Actions to modify the list
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:common_dependencies/common_dependencies.dart';

extension RepeaterGroupActions on RepeaterGroupField {
  void addEntry(AnswersManager _answersManager) {
    final currentValue = value ?? [];
    final uuid = Uuid();
    // Create new entry from template with unique IDs
    final newEntry = template?.map((field) {
          final uniqueId = '${id}_${field.id}_${uuid.v4()}';
          return field.copyWith(id: uniqueId);
        }).toList() ??
        [];
    fieldsGroups?..add(newEntry);
    // Update repeater group value
    _answersManager.updateAnswer(
      id,
      [
        ...currentValue,
        Map.fromEntries(
            newEntry.map((entry) => MapEntry(entry.id, entry.answer)))
      ],
    );
  }

  void removeEntry(int index, AnswersManager _answersManager) {
    final currentValue = _answersManager.currentAnswers[id] ?? [];
    if (index < 0 || index >= currentValue.length) return;

    // Remove entry and update indexes for remaining entries
    currentValue.removeAt(index);
    fieldsGroups?.removeAt(index);

    _answersManager.updateAnswer(id, [...currentValue]);
  }
}
