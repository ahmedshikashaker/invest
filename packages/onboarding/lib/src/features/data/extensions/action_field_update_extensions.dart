import 'dart:convert';

import 'package:onboarding/src/features/data/actions/models/action_response.dart';
import 'package:onboarding/src/features/data/extensions/file_value_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';

/// Extension for parsing field update values based on field type.
extension ActionFieldUpdateExtensions on FieldUpdate {
  /// Parses a raw value into the appropriate type based on the field type.
  ///
  /// [field] - The field to parse the value for
  /// [logger] - Optional logger for recording issues
  ///
  /// Returns the parsed value in the appropriate type for the field
  dynamic parseValueForField(Field? field) {
    if (field == null) {
      return value;
    }

    try {
      return field.map(
        text: (_) => _parseTextValue(value),
        file: (_) => _parseFileValue(value),
        amount: (_) => _parseAmountValue(value),
        selection: (_) => value,
        dropdown: (_) => value,
        checkbox: (_) => value,
        datePicker: (_) => _parseDateValue(value),
        radio: (_) => value,
        signature: (_) => _parseFileValue(value),
        radioGroup: (_) => _parseTextValue(value),
        checkBoxGroup: (_) => _parseListValue(value),
        repeaterGroup: (_) => value,
        hint: (_) => null,
        link: (_) => value,
        group: (GroupField value) => value,
      );
    } catch (e) {
      return value;
    }
  }

  /// Parses a text value.
  String? _parseTextValue(dynamic rawValue) {
    if (rawValue == null) return null;
    return rawValue is String ? rawValue : rawValue.toString();
  }

  /// Parses a file value.
  dynamic _parseFileValue(dynamic rawValue) {
    if (rawValue == null) return null;
    if (rawValue is Map<String, dynamic>) {
      try {
        return FileValue.fromJson(rawValue).getFileInfo();
      } catch (e) {}
    }
    return rawValue;
  }

  /// Parses an amount (integer) value.
  int? _parseAmountValue(dynamic rawValue) {
    if (rawValue == null) return null;
    if (rawValue is int) return rawValue;

    if (rawValue is String) {
      try {
        return int.parse(rawValue);
      } catch (e) {}
    }

    try {
      return int.tryParse(rawValue.toString());
    } catch (e) {}

    return null;
  }

  /// Parses a date value from various formats.
  DateTime? _parseDateValue(dynamic rawValue) {
    if (rawValue == null) return null;
    if (rawValue is DateTime) return rawValue;

    if (rawValue is String) {
      try {
        return DateTime.parse(rawValue);
      } catch (e) {}
    } else if (rawValue is Map<String, dynamic> &&
        rawValue.containsKey('date')) {
      try {
        return DateTime.parse(rawValue['date']);
      } catch (e) {}
    }

    return null;
  }

  /// Parses list values from various formats.
  List<String>? _parseListValue(dynamic rawValue) {
    if (rawValue == null) return null;

    if (rawValue is List) {
      return rawValue.map((e) => e.toString()).toList();
    } else if (rawValue is String) {
      // Handle comma-separated or JSON string
      if (rawValue.startsWith('[') && rawValue.endsWith(']')) {
        try {
          final List<dynamic> parsed = jsonDecode(rawValue);
          return parsed.map((e) => e.toString()).toList();
        } catch (e) {
          // Fall back to comma-split if JSON parsing fails
          return rawValue.split(',').map((e) => e.trim()).toList();
        }
      } else {
        return rawValue.split(',').map((e) => e.trim()).toList();
      }
    }

    return null;
  }
}
