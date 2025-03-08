import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/extensions/repeater_group_extensions.dart';
import 'package:onboarding/src/features/data/extensions/section_extensions.dart';
import 'package:onboarding/src/features/data/models/group.dart';
import 'package:onboarding/src/features/data/models/section.dart';
import 'package:onboarding/src/features/domain/managers/answers_manager.dart';
import 'package:onboarding/src/features/domain/selectors/step_selectors.dart';
import 'package:onboarding/src/features/domain/validators/section_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_core/kib_core.dart';
import 'package:collection/collection.dart';
import 'package:onboarding/src/features/presentation/mixin/action_mixin.dart';

import '../../../data/models/field.dart';
import '../../../data/models/lookup_item.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../../mixin/upload_file_mixin.dart';

part 'section_state.dart';

part 'section_cubit.freezed.dart';

@Injectable()
class SectionCubit extends Cubit<SectionState>
    with UploadFileMixin, ActionMixin {
  final StepSelectors selectors;
  late Section _currentSection;
  final AnswersManager _answersManager;
  final SectionValidator _validation;

  SectionCubit(
    this.selectors,
    this._answersManager,
    this._validation,
  ) : super(const SectionState.initial());

  initSection(Section section) {
    _currentSection = section;
    _validation.initListener(section);
  }

  Section get currentSection => _currentSection;

  void updateAnswer(String fieldId, dynamic value) =>
      _answersManager.updateAnswer(fieldId, value);

  Map<String, dynamic> getCurrentSectionAnswers() {
    final visibleFields =
        _currentSection.getVisibleFields(_answersManager.currentAnswers);
    return Map.fromEntries(
        visibleFields.expand((field) => _processFieldAnswers(field).entries));
  }

  Map<String, dynamic> _processFieldAnswers(Field field) {
    return field.maybeMap(
      checkBoxGroup: (group) => _processGroupAnswers(
        fieldId: group.id,
        answer: _answersManager.getAnswerById(group.id) as List?,
        options: group.options ?? [],
        isMultiSelect: true,
      ),
      radioGroup: (group) => _processGroupAnswers(
        fieldId: group.id,
        answer: _answersManager.getAnswerById(group.id),
        options: group.options ?? [],
        isMultiSelect: false,
      ),
      repeaterGroup: (group) => _processRepeaterAnswers(
        fieldId: group.id,
        fields: group.fieldsGroups ?? [],
      ),
      orElse: () => {field.id: _answersManager.getAnswerById(field.id)},
    );
  }

  Map<String, dynamic> _processGroupAnswers({
    required String fieldId,
    required dynamic answer,
    required List<LookupItem> options,
    required bool isMultiSelect,
  }) {
    if (answer == null) return {fieldId: null};

    final selectedValues = isMultiSelect ? answer as List : [answer];
    final Map<String, dynamic> nestedAnswers = {};

    for (final value in selectedValues) {
      final option = options.firstWhereOrNull((opt) => opt.value == value);
      if (option != null) {
        for (final field in option.fields) {
          nestedAnswers.addAll(_processFieldAnswers(field));
        }
      }
    }

    return {
      fieldId: answer,
      ...nestedAnswers,
    };
  }

  Map<String, dynamic> _processRepeaterAnswers({
    required String fieldId,
    required List<List<Field>> fields,
  }) {
    // Transform repeater field groups into the expected format:
    // [{ "field1": value1, "field2": value2 }, {...}, ...]
    final repeaterAnswers = fields.map((entryFields) {
      final entryMap = <String, dynamic>{};

      // For each field in the repeater entry, process it and add to the entry map
      for (final field in entryFields) {
        // Process the field and its nested structure recursively using existing methods
        final processedField = _processFieldAnswers(field);

        // Convert unique IDs back to original template IDs
        final convertedEntries = processedField.entries.map((entry) {
          // If it's a unique ID created for repeater field, extract the original ID
          final key = entry.key.contains('_')
              ? _extractOriginalId(entry.key)
              : entry.key;
          return MapEntry(key, entry.value);
        });

        // Add to the entry map
        entryMap.addEntries(convertedEntries);
      }

      return entryMap;
    }).toList();

    // Return just the repeater field with its value, no nested fields in top level
    return {fieldId: repeaterAnswers};
  }

  String _extractOriginalId(String uniqueId) {
    return uniqueId.split('_')[1]; // Get original template field ID
  }

  void enableValidation() {
    _validation.enableValidation();
  }

  void submitSection() {
    _validation.enableValidation();
    // check is valid section
    if (isValidSection) {
      //submit answers to backend
    }
  }

  void saveAndExit() {
    // submit directly without doing any validation
  }

  LookupItem? getValue(DropdownField field, dynamic value) {
    for (LookupItem item in field.options!) {
      if (item.value == value) {
        return item;
      }
    }
    return null;
  }

  ValueListenable<dynamic> selectAnswerById(String fieldId) =>
      selectors.selectAnswerById(fieldId);

  ValueListenable<Map<String, dynamic>> selectAnswersByIds(
          List<String> fieldIds) =>
      selectors.selectAnswersByIds(fieldIds);

  ValueListenable<({dynamic answer, String? error})> selectFieldState(
          String fieldId) =>
      selectors.selectFieldState(fieldId);

  ValueListenable<bool> selectGroupHasVisibleFields(Group group) =>
      selectors.selectGroupHasVisibleFields(group);

  ValueListenable<bool> selectOptionsHasVisibleFields(
          String optionId, String fieldId) =>
      selectors.selectOptionsHasVisibleFields(optionId, fieldId);

  void addEntryToRepeaterGroup(RepeaterGroupField field) =>
      field.addEntry(_answersManager);

  void removeEntryToRepeaterGroup(int index, RepeaterGroupField field) =>
      field.removeEntry(index, _answersManager);

  bool get isValidSection => _validation.isValid;

  @override
  Future<void> close() {
    _validation.dispose();
    return super.close();
  }

  @override
  List<Field> get fields => _currentSection.allFields;
}
