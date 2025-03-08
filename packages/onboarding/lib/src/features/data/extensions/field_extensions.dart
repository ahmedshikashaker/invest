import 'package:onboarding/src/features/data/extensions/file_value_extensions.dart';
import 'package:onboarding/src/features/data/models/conditional.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';

import '../models/validation.dart';

extension FieldVisibility on Field {
  bool isVisible(Map<String, dynamic> answers) {
    if (conditional == null || conditional?.conditions.isEmpty == true)
      return true;

    switch (conditional?.logicalOperator) {
      case LogicOperator.and:
        return conditional?.conditions.every((condition) {
              final fieldValue = answers[condition.targetFieldId];
              return _evaluateCondition(
                  condition, fieldValue, condition.comparisonValue);
            }) ??
            false;

      case LogicOperator.or:
        return conditional?.conditions.any((condition) {
              final fieldValue = answers[condition.targetFieldId];
              return _evaluateCondition(
                  condition, fieldValue, condition.comparisonValue);
            }) ??
            false;
      default:
        return true;
    }
  }

  bool _evaluateCondition(
      Condition condition, dynamic fieldValue, dynamic conditionValue) {
    switch (condition.operator) {
      case Operator.equals:
        return fieldValue == conditionValue;
      case Operator.notEquals:
        return fieldValue != conditionValue;
      case Operator.greaterThan:
        return (fieldValue is num) && (fieldValue > conditionValue);
      case Operator.lessThan:
        return (fieldValue is num) && (fieldValue < conditionValue);
      case Operator.contains:
        return (fieldValue is List) && fieldValue.contains(conditionValue);
      case Operator.notContains:
        return (fieldValue is List) && !fieldValue.contains(conditionValue);
      case Operator.exists:
        return (fieldValue is List) && fieldValue.contains(conditionValue);
    }
  }

  dynamic get answer => mapOrNull(
        text: (text) => text.value,
        file: (file) => file.value?.getFileInfo(),
        amount: (amount) => amount.value,
        selection: (selection) => selection.value,
        dropdown: (dropdown) => dropdown.value,
        checkbox: (checkbox) => checkbox.value,
        datePicker: (datePicker) => datePicker.value,
        radio: (radio) => radio.value,
        signature: (signature) => signature.value,
        radioGroup: (radioGroup) => radioGroup.value,
        checkBoxGroup: (checkBoxGroup) => checkBoxGroup.value,
        repeaterGroup: (repeaterGroup) => repeaterGroup.value,
      );

  Field setAnswerAndId(dynamic value ,String uniqueId) {
    return maybeMap(
      text: (field) => field.copyWith(id: uniqueId, value: value?.toString()),
      amount: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? int.tryParse(value.toString()) : null),
      file: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? FileValue.fromJson(value) : null),
      selection: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? List<String>.from(value) : null),
      dropdown: (field) => field.copyWith(id: uniqueId, value: value?.toString()),
      checkbox: (field) => field.copyWith(id: uniqueId, value: value as bool?),
      datePicker: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? DateTime.parse(value.toString()) : null),
      radio: (field) => field.copyWith(id: uniqueId, value: value?.toString()),
      signature: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? FileValue.fromJson(value) : null),
      radioGroup: (field) => field.copyWith(id: uniqueId, value: value?.toString()),
      checkBoxGroup: (field) => field.copyWith(
          id: uniqueId,
          value: value != null ? List<String>.from(value) : null),
      // For fields without value property, just update ID
      orElse: () => this.copyWith(id: uniqueId),
    );
  }

  String? getFieldError(dynamic fieldValue) {
    String? error;

    for (final Validation validation in validations ?? []) {
      error = validation.when(
        regex: (pattern, message) => !RegExp(pattern, caseSensitive: false)
                .hasMatch(fieldValue?.toString() ?? '')
            ? message
            : null,
        minLength: (length, message) =>
            (fieldValue?.toString().length ?? 0) < length ? message : null,
        mimeType: (types, message) => types.contains(
                mimeFromExtension((fieldValue as FileInfo).extention ?? ''))
            ? null
            : message,
        maxSize: (size, message) =>
            (fieldValue as FileInfo).totalSize! <= size ? null : message,
        required: (isRequired, message) => isRequired &&
                fieldValue?.toString().isNotEmpty == true &&
                fieldValue?.toString() != null
            ? null
            : message,
      );
      if (error != null) break;
    }
    return error;
  }
}
