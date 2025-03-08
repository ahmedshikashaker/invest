import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/extensions/value_notifier_extentions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/data/models/section.dart';

@LazySingleton()
class AnswersManager {
  final ValueNotifier<Map<String, dynamic>> _answersNotifier =
      ValueNotifier<Map<String, dynamic>>({});

  ValueNotifier<Map<String, dynamic>> get answersNotifier => _answersNotifier;

  Future<void> initAnswers(List<Section> backendSections) async {
    final entries = backendSections
        .expand((section) => section.groups)
        .expand((group) => group.fields)
        .expand(_extractFieldsRecursively)
        .map((field) => MapEntry(field.id, field.answer));

    _answersNotifier.value = Map.fromEntries(entries);
  }

  List<Field> _extractFieldsRecursively(Field field) {
    return field.maybeMap(
      checkBoxGroup: (group) => [
        group,
        ...group.options?.expand(
                (option) => option.fields.expand(_extractFieldsRecursively)) ??
            [],
      ],
      radioGroup: (group) => [
        group,
        ...group.options?.expand(
                (option) => option.fields.expand(_extractFieldsRecursively)) ??
            [],
      ],
      repeaterGroup: (group) =>[
          group,
          ...group.fieldsGroups
              ?.expand((item) => item)
              .expand(_extractFieldsRecursively)
              .toList() ??
          []],
      orElse: () => [field],
    );
  }

  ValueListenable<dynamic> selectAnswerById(String fieldId) {
    return answersNotifier.select((answers) => answers[fieldId]);
  }

  dynamic getAnswerById(String fieldId) {
    return currentAnswers[fieldId];
  }

  Map<String, dynamic> get currentAnswers => _answersNotifier.value;

  void updateAnswer(String fieldId, dynamic value) {
    _answersNotifier.value = Map.from(_answersNotifier.value)
      ..[fieldId] = value;
  }

  void clearAnswers() {
    _answersNotifier.value = {};
  }

  void dispose() {
    _answersNotifier.dispose();
  }
}
