import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/converter/repeater_value_converter.dart';
import 'package:onboarding/src/features/data/models/conditional.dart';
import 'package:onboarding/src/features/data/models/lookup_item.dart';
import 'package:onboarding/src/features/data/models/template_item.dart';
import 'package:onboarding/src/features/data/models/validation.dart';
import 'package:invest_common/common.dart';

part 'field.freezed.dart';

part 'field.g.dart';

@Freezed(unionKey: 'type' , makeCollectionsUnmodifiable: false)
class Field with _$Field {
  @FreezedUnionValue('TEXT')
  const factory Field.text(
      {required String id,
      String? label,
      String? placeholder,
      @Default(false) bool required,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions,
      }) = TextField;

  @FreezedUnionValue('FILE')
  const factory Field.file({
    required String id,
    String? label,
    String? title,
    String? description,
    IconModelId? icon,
    @Default(false) bool required,
    FileValue? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = FileField;

  @FreezedUnionValue('AMOUNT')
  const factory Field.amount({
    required String id,
    String? label,
    String? placeholder,
    String? suffix,
    @Default(false) bool required,
    int? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = AmountField;

  @FreezedUnionValue('SELECTION')
  const factory Field.selection({
    required String id,
    String? label,
    @Default(1) int numberOfColumns,
    String? lookupId,
    List<LookupItem>? options,
    @Default(false) bool required,
    List<String>? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = SelectionField;

  @FreezedUnionValue('DROPDOWN')
  // New dropdown fields
  const factory Field.dropdown({
    required String id,
    String? label,
    String? placeholder,
    @Default(false) bool required,
    String? lookupId,
    List<LookupItem>? options,
    String? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = DropdownField;

  @FreezedUnionValue('CHECKBOX')
  // New field types
  const factory Field.checkbox({
    required String id,
    String? label,
    String? placeholder,
    @Default(false) bool required,
    bool? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = CheckboxField;

  @FreezedUnionValue('DATEPICKER')
  const factory Field.datePicker({
    required String id,
    String? label,
    @Default(false) bool required,
    String? placeholder,
    String? suffix,
    DateTime? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = DatePickerField;

  @FreezedUnionValue('LINK')
  const factory Field.link({
    required String id,
    String? label,
    @Default(false) bool required,
    String? placeholder,
    String? suffix,
    String? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = LinkField;

  @FreezedUnionValue('RADIO')
  const factory Field.radio({
    required String id,
    String? label,
    @Default(false) bool required,
    @Default(1) int numberOfColumns,
    String? lookupId,
    List<LookupItem>? options,
    String? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = RadioField;

  @FreezedUnionValue('SIGNATURE')
  const factory Field.signature({
    required String id,
    String? label,
    @Default(false) bool required,
    FileValue? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = SignatureField;

  @FreezedUnionValue('GROUP')
  const factory Field.group({
    required String id,
    String? label,
    @Default(false) bool required,
    List<Field>? children,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = GroupField;

  @FreezedUnionValue('HINT')
  const factory Field.hint({
    required String id,
    String? label,
    String? level,
    String? placeholder,
    @Default(false) bool required,
    List<Field>? children,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = HintField;

  @FreezedUnionValue('RADIO_GROUP')
  const factory Field.radioGroup({
    required String id,
    String? label,
    @Default(false) bool required,
    @Default(1) int numberOfColumns,
    String? lookupId,
    List<LookupItem>? options,
    String? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = RadioGroupField;

  @FreezedUnionValue('CHECKBOX_GROUP')
  const factory Field.checkBoxGroup({
    required String id,
    String? label,
    @Default(false) bool required,
    @Default(1) int numberOfColumns,
    List<LookupItem>? options,
    List<String>? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = CheckBoxGroupField;

  @FreezedUnionValue('REPEATER_GROUP')
  const factory Field.repeaterGroup({
    required String id,
    String? label,
    String? description,
    String? templateTitle,
    String? addButtonLabel,
    List<Field>? template,
    @JsonKey(
       readValue: parseRepeaterValue,
        fromJson: convertRepeaterValue,)
    List<List<Field>>? fieldsGroups,
    List<dynamic>? value,
    List<Validation>? validations,
    Conditional? conditional,
    List<ActionConfig>? actions,
  }) = RepeaterGroupField;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}

@freezed
class FileValue with _$FileValue {
  factory FileValue(
      {@JsonKey(readValue: documentIdFromJson) required String documentUuid,
      required String name,
      required String mimeType,
      int? size}) = _FileValue;

  factory FileValue.fromJson(Map<String, dynamic> json) =>
      _$FileValueFromJson(json);
}

String documentIdFromJson(Map json, String key) => json[key] ?? json['id'];


Map<String, dynamic>? parseRepeaterValue(dynamic json, String key) {
  final rawValue = json["value"];
  if (rawValue == null) return null;

  return {
    'value': rawValue,
    'id': json['id'],
    'template': json['template'],
  };
}

// Parser helper
List<List<Field>>? convertRepeaterValue(dynamic json) {
  if (json == null) return null;

  final converter = RepeaterValueConverter(
    parentId: json['id'] as String,
    template: (json['template'] as List).map((e) => Field.fromJson(e)).toList(),
  );

  return converter.fromJson(json);
}
