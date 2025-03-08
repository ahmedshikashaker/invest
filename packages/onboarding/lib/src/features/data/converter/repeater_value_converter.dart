import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:common_dependencies/common_dependencies.dart';

class RepeaterValueConverter
    implements JsonConverter<List<List<Field>>, dynamic> {
  final String parentId;
  final List<Field> template;

  const RepeaterValueConverter({
    required this.parentId,
    required this.template,
  });

  @override
  List<List<Field>> fromJson(dynamic json) {
    final List<dynamic> values = json['value'] as List<dynamic>;

    return values.asMap().entries.map((indexedEntry) {
      final values = Map<String, dynamic>.from(indexedEntry.value);

      return template.map((templateField) {
        final uuid = Uuid();

        final uniqueId = '${parentId}_${templateField.id}_${uuid.v4()}';
        final value = values["repeater-${templateField.id}"];

        return templateField.setAnswerAndId(value, uniqueId);
      }).toList();
    }).toList();
  }

  @override
  List<dynamic> toJson(List<List<Field>> fields) {
    return fields.map((entryFields) {
      return Map.fromEntries(
        entryFields.map((field) => MapEntry(
              _getOriginalId(field.id),
              field.answer,
            )),
      );
    }).toList();
  }

  String _getOriginalId(String uniqueId) {
    return uniqueId.split('_')[1];
  }
}
