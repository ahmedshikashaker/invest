// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Field _$FieldFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'TEXT':
      return TextField.fromJson(json);
    case 'FILE':
      return FileField.fromJson(json);
    case 'AMOUNT':
      return AmountField.fromJson(json);
    case 'SELECTION':
      return SelectionField.fromJson(json);
    case 'DROPDOWN':
      return DropdownField.fromJson(json);
    case 'CHECKBOX':
      return CheckboxField.fromJson(json);
    case 'DATEPICKER':
      return DatePickerField.fromJson(json);
    case 'LINK':
      return LinkField.fromJson(json);
    case 'RADIO':
      return RadioField.fromJson(json);
    case 'SIGNATURE':
      return SignatureField.fromJson(json);
    case 'GROUP':
      return GroupField.fromJson(json);
    case 'HINT':
      return HintField.fromJson(json);
    case 'RADIO_GROUP':
      return RadioGroupField.fromJson(json);
    case 'CHECKBOX_GROUP':
      return CheckBoxGroupField.fromJson(json);
    case 'REPEATER_GROUP':
      return RepeaterGroupField.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Field', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Field {
  String get id => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  List<Validation>? get validations => throw _privateConstructorUsedError;
  Conditional? get conditional => throw _privateConstructorUsedError;
  List<ActionConfig>? get actions => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Field to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {String id,
      String? label,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ) as $Val);
  }

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionalCopyWith<$Res>? get conditional {
    if (_value.conditional == null) {
      return null;
    }

    return $ConditionalCopyWith<$Res>(_value.conditional!, (value) {
      return _then(_value.copyWith(conditional: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$TextFieldImplCopyWith(
          _$TextFieldImpl value, $Res Function(_$TextFieldImpl) then) =
      __$$TextFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? placeholder,
      bool required,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$TextFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$TextFieldImpl>
    implements _$$TextFieldImplCopyWith<$Res> {
  __$$TextFieldImplCopyWithImpl(
      _$TextFieldImpl _value, $Res Function(_$TextFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? placeholder = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$TextFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TextFieldImpl implements TextField {
  const _$TextFieldImpl(
      {required this.id,
      this.label,
      this.placeholder,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'TEXT';

  factory _$TextFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? placeholder;
  @override
  @JsonKey()
  final bool required;
  @override
  final String? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.text(id: $id, label: $label, placeholder: $placeholder, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      placeholder,
      required,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFieldImplCopyWith<_$TextFieldImpl> get copyWith =>
      __$$TextFieldImplCopyWithImpl<_$TextFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return text(id, label, placeholder, required, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return text?.call(id, label, placeholder, required, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(id, label, placeholder, required, value, validations,
          conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextFieldImplToJson(
      this,
    );
  }
}

abstract class TextField implements Field {
  const factory TextField(
      {required final String id,
      final String? label,
      final String? placeholder,
      final bool required,
      final String? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$TextFieldImpl;

  factory TextField.fromJson(Map<String, dynamic> json) =
      _$TextFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get placeholder;
  bool get required;
  String? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFieldImplCopyWith<_$TextFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FileFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FileFieldImplCopyWith(
          _$FileFieldImpl value, $Res Function(_$FileFieldImpl) then) =
      __$$FileFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? title,
      String? description,
      IconModelId? icon,
      bool required,
      FileValue? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  $FileValueCopyWith<$Res>? get value;
  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$FileFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FileFieldImpl>
    implements _$$FileFieldImplCopyWith<$Res> {
  __$$FileFieldImplCopyWithImpl(
      _$FileFieldImpl _value, $Res Function(_$FileFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$FileFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconModelId?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FileValue?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileValueCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $FileValueCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FileFieldImpl implements FileField {
  const _$FileFieldImpl(
      {required this.id,
      this.label,
      this.title,
      this.description,
      this.icon,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'FILE';

  factory _$FileFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final IconModelId? icon;
  @override
  @JsonKey()
  final bool required;
  @override
  final FileValue? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.file(id: $id, label: $label, title: $title, description: $description, icon: $icon, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      title,
      description,
      icon,
      required,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileFieldImplCopyWith<_$FileFieldImpl> get copyWith =>
      __$$FileFieldImplCopyWithImpl<_$FileFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return file(id, label, title, description, icon, required, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return file?.call(id, label, title, description, icon, required, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(id, label, title, description, icon, required, value,
          validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return file(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return file?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (file != null) {
      return file(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FileFieldImplToJson(
      this,
    );
  }
}

abstract class FileField implements Field {
  const factory FileField(
      {required final String id,
      final String? label,
      final String? title,
      final String? description,
      final IconModelId? icon,
      final bool required,
      final FileValue? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$FileFieldImpl;

  factory FileField.fromJson(Map<String, dynamic> json) =
      _$FileFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get title;
  String? get description;
  IconModelId? get icon;
  bool get required;
  FileValue? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileFieldImplCopyWith<_$FileFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AmountFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$AmountFieldImplCopyWith(
          _$AmountFieldImpl value, $Res Function(_$AmountFieldImpl) then) =
      __$$AmountFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? placeholder,
      String? suffix,
      bool required,
      int? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$AmountFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$AmountFieldImpl>
    implements _$$AmountFieldImplCopyWith<$Res> {
  __$$AmountFieldImplCopyWithImpl(
      _$AmountFieldImpl _value, $Res Function(_$AmountFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? placeholder = freezed,
    Object? suffix = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$AmountFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountFieldImpl implements AmountField {
  const _$AmountFieldImpl(
      {required this.id,
      this.label,
      this.placeholder,
      this.suffix,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'AMOUNT';

  factory _$AmountFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? placeholder;
  @override
  final String? suffix;
  @override
  @JsonKey()
  final bool required;
  @override
  final int? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.amount(id: $id, label: $label, placeholder: $placeholder, suffix: $suffix, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      placeholder,
      suffix,
      required,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountFieldImplCopyWith<_$AmountFieldImpl> get copyWith =>
      __$$AmountFieldImplCopyWithImpl<_$AmountFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return amount(id, label, placeholder, suffix, required, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return amount?.call(id, label, placeholder, suffix, required, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (amount != null) {
      return amount(id, label, placeholder, suffix, required, value,
          validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return amount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return amount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (amount != null) {
      return amount(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountFieldImplToJson(
      this,
    );
  }
}

abstract class AmountField implements Field {
  const factory AmountField(
      {required final String id,
      final String? label,
      final String? placeholder,
      final String? suffix,
      final bool required,
      final int? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$AmountFieldImpl;

  factory AmountField.fromJson(Map<String, dynamic> json) =
      _$AmountFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get placeholder;
  String? get suffix;
  bool get required;
  int? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AmountFieldImplCopyWith<_$AmountFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectionFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$SelectionFieldImplCopyWith(_$SelectionFieldImpl value,
          $Res Function(_$SelectionFieldImpl) then) =
      __$$SelectionFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      int numberOfColumns,
      String? lookupId,
      List<LookupItem>? options,
      bool required,
      List<String>? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$SelectionFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$SelectionFieldImpl>
    implements _$$SelectionFieldImplCopyWith<$Res> {
  __$$SelectionFieldImplCopyWithImpl(
      _$SelectionFieldImpl _value, $Res Function(_$SelectionFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? numberOfColumns = null,
    Object? lookupId = freezed,
    Object? options = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$SelectionFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfColumns: null == numberOfColumns
          ? _value.numberOfColumns
          : numberOfColumns // ignore: cast_nullable_to_non_nullable
              as int,
      lookupId: freezed == lookupId
          ? _value.lookupId
          : lookupId // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<LookupItem>?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectionFieldImpl implements SelectionField {
  const _$SelectionFieldImpl(
      {required this.id,
      this.label,
      this.numberOfColumns = 1,
      this.lookupId,
      this.options,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'SELECTION';

  factory _$SelectionFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectionFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final int numberOfColumns;
  @override
  final String? lookupId;
  @override
  final List<LookupItem>? options;
  @override
  @JsonKey()
  final bool required;
  @override
  final List<String>? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.selection(id: $id, label: $label, numberOfColumns: $numberOfColumns, lookupId: $lookupId, options: $options, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.numberOfColumns, numberOfColumns) ||
                other.numberOfColumns == numberOfColumns) &&
            (identical(other.lookupId, lookupId) ||
                other.lookupId == lookupId) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      numberOfColumns,
      lookupId,
      const DeepCollectionEquality().hash(options),
      required,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionFieldImplCopyWith<_$SelectionFieldImpl> get copyWith =>
      __$$SelectionFieldImplCopyWithImpl<_$SelectionFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return selection(id, label, numberOfColumns, lookupId, options, required,
        value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return selection?.call(id, label, numberOfColumns, lookupId, options,
        required, value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(id, label, numberOfColumns, lookupId, options, required,
          value, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return selection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return selection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (selection != null) {
      return selection(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectionFieldImplToJson(
      this,
    );
  }
}

abstract class SelectionField implements Field {
  const factory SelectionField(
      {required final String id,
      final String? label,
      final int numberOfColumns,
      final String? lookupId,
      final List<LookupItem>? options,
      final bool required,
      final List<String>? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$SelectionFieldImpl;

  factory SelectionField.fromJson(Map<String, dynamic> json) =
      _$SelectionFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  int get numberOfColumns;
  String? get lookupId;
  List<LookupItem>? get options;
  bool get required;
  List<String>? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectionFieldImplCopyWith<_$SelectionFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DropdownFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$DropdownFieldImplCopyWith(
          _$DropdownFieldImpl value, $Res Function(_$DropdownFieldImpl) then) =
      __$$DropdownFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? placeholder,
      bool required,
      String? lookupId,
      List<LookupItem>? options,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$DropdownFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$DropdownFieldImpl>
    implements _$$DropdownFieldImplCopyWith<$Res> {
  __$$DropdownFieldImplCopyWithImpl(
      _$DropdownFieldImpl _value, $Res Function(_$DropdownFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? placeholder = freezed,
    Object? required = null,
    Object? lookupId = freezed,
    Object? options = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$DropdownFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      lookupId: freezed == lookupId
          ? _value.lookupId
          : lookupId // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<LookupItem>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DropdownFieldImpl implements DropdownField {
  const _$DropdownFieldImpl(
      {required this.id,
      this.label,
      this.placeholder,
      this.required = false,
      this.lookupId,
      this.options,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'DROPDOWN';

  factory _$DropdownFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$DropdownFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? placeholder;
  @override
  @JsonKey()
  final bool required;
  @override
  final String? lookupId;
  @override
  final List<LookupItem>? options;
  @override
  final String? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.dropdown(id: $id, label: $label, placeholder: $placeholder, required: $required, lookupId: $lookupId, options: $options, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.lookupId, lookupId) ||
                other.lookupId == lookupId) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      placeholder,
      required,
      lookupId,
      const DeepCollectionEquality().hash(options),
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownFieldImplCopyWith<_$DropdownFieldImpl> get copyWith =>
      __$$DropdownFieldImplCopyWithImpl<_$DropdownFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return dropdown(id, label, placeholder, required, lookupId, options, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return dropdown?.call(id, label, placeholder, required, lookupId, options,
        value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown(id, label, placeholder, required, lookupId, options,
          value, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return dropdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return dropdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (dropdown != null) {
      return dropdown(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DropdownFieldImplToJson(
      this,
    );
  }
}

abstract class DropdownField implements Field {
  const factory DropdownField(
      {required final String id,
      final String? label,
      final String? placeholder,
      final bool required,
      final String? lookupId,
      final List<LookupItem>? options,
      final String? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$DropdownFieldImpl;

  factory DropdownField.fromJson(Map<String, dynamic> json) =
      _$DropdownFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get placeholder;
  bool get required;
  String? get lookupId;
  List<LookupItem>? get options;
  String? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownFieldImplCopyWith<_$DropdownFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckboxFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$CheckboxFieldImplCopyWith(
          _$CheckboxFieldImpl value, $Res Function(_$CheckboxFieldImpl) then) =
      __$$CheckboxFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? placeholder,
      bool required,
      bool? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$CheckboxFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$CheckboxFieldImpl>
    implements _$$CheckboxFieldImplCopyWith<$Res> {
  __$$CheckboxFieldImplCopyWithImpl(
      _$CheckboxFieldImpl _value, $Res Function(_$CheckboxFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? placeholder = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$CheckboxFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckboxFieldImpl implements CheckboxField {
  const _$CheckboxFieldImpl(
      {required this.id,
      this.label,
      this.placeholder,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'CHECKBOX';

  factory _$CheckboxFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckboxFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? placeholder;
  @override
  @JsonKey()
  final bool required;
  @override
  final bool? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.checkbox(id: $id, label: $label, placeholder: $placeholder, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckboxFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      placeholder,
      required,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckboxFieldImplCopyWith<_$CheckboxFieldImpl> get copyWith =>
      __$$CheckboxFieldImplCopyWithImpl<_$CheckboxFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return checkbox(id, label, placeholder, required, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return checkbox?.call(id, label, placeholder, required, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(id, label, placeholder, required, value, validations,
          conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return checkbox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return checkbox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (checkbox != null) {
      return checkbox(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckboxFieldImplToJson(
      this,
    );
  }
}

abstract class CheckboxField implements Field {
  const factory CheckboxField(
      {required final String id,
      final String? label,
      final String? placeholder,
      final bool required,
      final bool? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$CheckboxFieldImpl;

  factory CheckboxField.fromJson(Map<String, dynamic> json) =
      _$CheckboxFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get placeholder;
  bool get required;
  bool? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckboxFieldImplCopyWith<_$CheckboxFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DatePickerFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$DatePickerFieldImplCopyWith(_$DatePickerFieldImpl value,
          $Res Function(_$DatePickerFieldImpl) then) =
      __$$DatePickerFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      String? placeholder,
      String? suffix,
      DateTime? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$DatePickerFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$DatePickerFieldImpl>
    implements _$$DatePickerFieldImplCopyWith<$Res> {
  __$$DatePickerFieldImplCopyWithImpl(
      _$DatePickerFieldImpl _value, $Res Function(_$DatePickerFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? placeholder = freezed,
    Object? suffix = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$DatePickerFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatePickerFieldImpl implements DatePickerField {
  const _$DatePickerFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.placeholder,
      this.suffix,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'DATEPICKER';

  factory _$DatePickerFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatePickerFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  final String? placeholder;
  @override
  final String? suffix;
  @override
  final DateTime? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.datePicker(id: $id, label: $label, required: $required, placeholder: $placeholder, suffix: $suffix, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatePickerFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      placeholder,
      suffix,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatePickerFieldImplCopyWith<_$DatePickerFieldImpl> get copyWith =>
      __$$DatePickerFieldImplCopyWithImpl<_$DatePickerFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return datePicker(id, label, required, placeholder, suffix, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return datePicker?.call(id, label, required, placeholder, suffix, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (datePicker != null) {
      return datePicker(id, label, required, placeholder, suffix, value,
          validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return datePicker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return datePicker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (datePicker != null) {
      return datePicker(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DatePickerFieldImplToJson(
      this,
    );
  }
}

abstract class DatePickerField implements Field {
  const factory DatePickerField(
      {required final String id,
      final String? label,
      final bool required,
      final String? placeholder,
      final String? suffix,
      final DateTime? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$DatePickerFieldImpl;

  factory DatePickerField.fromJson(Map<String, dynamic> json) =
      _$DatePickerFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  String? get placeholder;
  String? get suffix;
  DateTime? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatePickerFieldImplCopyWith<_$DatePickerFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LinkFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$LinkFieldImplCopyWith(
          _$LinkFieldImpl value, $Res Function(_$LinkFieldImpl) then) =
      __$$LinkFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      String? placeholder,
      String? suffix,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$LinkFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$LinkFieldImpl>
    implements _$$LinkFieldImplCopyWith<$Res> {
  __$$LinkFieldImplCopyWithImpl(
      _$LinkFieldImpl _value, $Res Function(_$LinkFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? placeholder = freezed,
    Object? suffix = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$LinkFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      suffix: freezed == suffix
          ? _value.suffix
          : suffix // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkFieldImpl implements LinkField {
  const _$LinkFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.placeholder,
      this.suffix,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'LINK';

  factory _$LinkFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  final String? placeholder;
  @override
  final String? suffix;
  @override
  final String? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.link(id: $id, label: $label, required: $required, placeholder: $placeholder, suffix: $suffix, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.suffix, suffix) || other.suffix == suffix) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      placeholder,
      suffix,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkFieldImplCopyWith<_$LinkFieldImpl> get copyWith =>
      __$$LinkFieldImplCopyWithImpl<_$LinkFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return link(id, label, required, placeholder, suffix, value, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return link?.call(id, label, required, placeholder, suffix, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(id, label, required, placeholder, suffix, value, validations,
          conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return link(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return link?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (link != null) {
      return link(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkFieldImplToJson(
      this,
    );
  }
}

abstract class LinkField implements Field {
  const factory LinkField(
      {required final String id,
      final String? label,
      final bool required,
      final String? placeholder,
      final String? suffix,
      final String? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$LinkFieldImpl;

  factory LinkField.fromJson(Map<String, dynamic> json) =
      _$LinkFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  String? get placeholder;
  String? get suffix;
  String? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkFieldImplCopyWith<_$LinkFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$RadioFieldImplCopyWith(
          _$RadioFieldImpl value, $Res Function(_$RadioFieldImpl) then) =
      __$$RadioFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      int numberOfColumns,
      String? lookupId,
      List<LookupItem>? options,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$RadioFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$RadioFieldImpl>
    implements _$$RadioFieldImplCopyWith<$Res> {
  __$$RadioFieldImplCopyWithImpl(
      _$RadioFieldImpl _value, $Res Function(_$RadioFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? numberOfColumns = null,
    Object? lookupId = freezed,
    Object? options = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$RadioFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfColumns: null == numberOfColumns
          ? _value.numberOfColumns
          : numberOfColumns // ignore: cast_nullable_to_non_nullable
              as int,
      lookupId: freezed == lookupId
          ? _value.lookupId
          : lookupId // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<LookupItem>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RadioFieldImpl implements RadioField {
  const _$RadioFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.numberOfColumns = 1,
      this.lookupId,
      this.options,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'RADIO';

  factory _$RadioFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$RadioFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  @JsonKey()
  final int numberOfColumns;
  @override
  final String? lookupId;
  @override
  final List<LookupItem>? options;
  @override
  final String? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.radio(id: $id, label: $label, required: $required, numberOfColumns: $numberOfColumns, lookupId: $lookupId, options: $options, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.numberOfColumns, numberOfColumns) ||
                other.numberOfColumns == numberOfColumns) &&
            (identical(other.lookupId, lookupId) ||
                other.lookupId == lookupId) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      numberOfColumns,
      lookupId,
      const DeepCollectionEquality().hash(options),
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioFieldImplCopyWith<_$RadioFieldImpl> get copyWith =>
      __$$RadioFieldImplCopyWithImpl<_$RadioFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return radio(id, label, required, numberOfColumns, lookupId, options, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return radio?.call(id, label, required, numberOfColumns, lookupId, options,
        value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (radio != null) {
      return radio(id, label, required, numberOfColumns, lookupId, options,
          value, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return radio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return radio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (radio != null) {
      return radio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RadioFieldImplToJson(
      this,
    );
  }
}

abstract class RadioField implements Field {
  const factory RadioField(
      {required final String id,
      final String? label,
      final bool required,
      final int numberOfColumns,
      final String? lookupId,
      final List<LookupItem>? options,
      final String? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$RadioFieldImpl;

  factory RadioField.fromJson(Map<String, dynamic> json) =
      _$RadioFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  int get numberOfColumns;
  String? get lookupId;
  List<LookupItem>? get options;
  String? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RadioFieldImplCopyWith<_$RadioFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignatureFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$SignatureFieldImplCopyWith(_$SignatureFieldImpl value,
          $Res Function(_$SignatureFieldImpl) then) =
      __$$SignatureFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      FileValue? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  $FileValueCopyWith<$Res>? get value;
  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$SignatureFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$SignatureFieldImpl>
    implements _$$SignatureFieldImplCopyWith<$Res> {
  __$$SignatureFieldImplCopyWithImpl(
      _$SignatureFieldImpl _value, $Res Function(_$SignatureFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$SignatureFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as FileValue?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileValueCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $FileValueCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureFieldImpl implements SignatureField {
  const _$SignatureFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'SIGNATURE';

  factory _$SignatureFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  final FileValue? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.signature(id: $id, label: $label, required: $required, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureFieldImplCopyWith<_$SignatureFieldImpl> get copyWith =>
      __$$SignatureFieldImplCopyWithImpl<_$SignatureFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return signature(
        id, label, required, value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return signature?.call(
        id, label, required, value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (signature != null) {
      return signature(
          id, label, required, value, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return signature(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return signature?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (signature != null) {
      return signature(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureFieldImplToJson(
      this,
    );
  }
}

abstract class SignatureField implements Field {
  const factory SignatureField(
      {required final String id,
      final String? label,
      final bool required,
      final FileValue? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$SignatureFieldImpl;

  factory SignatureField.fromJson(Map<String, dynamic> json) =
      _$SignatureFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  FileValue? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignatureFieldImplCopyWith<_$SignatureFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$GroupFieldImplCopyWith(
          _$GroupFieldImpl value, $Res Function(_$GroupFieldImpl) then) =
      __$$GroupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      List<Field>? children,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$GroupFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$GroupFieldImpl>
    implements _$$GroupFieldImplCopyWith<$Res> {
  __$$GroupFieldImplCopyWithImpl(
      _$GroupFieldImpl _value, $Res Function(_$GroupFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? children = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$GroupFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupFieldImpl implements GroupField {
  const _$GroupFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.children,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'GROUP';

  factory _$GroupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  final List<Field>? children;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.group(id: $id, label: $label, required: $required, children: $children, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupFieldImplCopyWith<_$GroupFieldImpl> get copyWith =>
      __$$GroupFieldImplCopyWithImpl<_$GroupFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return group(
        id, label, required, children, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return group?.call(
        id, label, required, children, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(
          id, label, required, children, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupFieldImplToJson(
      this,
    );
  }
}

abstract class GroupField implements Field {
  const factory GroupField(
      {required final String id,
      final String? label,
      final bool required,
      final List<Field>? children,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$GroupFieldImpl;

  factory GroupField.fromJson(Map<String, dynamic> json) =
      _$GroupFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  List<Field>? get children;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupFieldImplCopyWith<_$GroupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HintFieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$HintFieldImplCopyWith(
          _$HintFieldImpl value, $Res Function(_$HintFieldImpl) then) =
      __$$HintFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? level,
      String? placeholder,
      bool required,
      List<Field>? children,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$HintFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$HintFieldImpl>
    implements _$$HintFieldImplCopyWith<$Res> {
  __$$HintFieldImplCopyWithImpl(
      _$HintFieldImpl _value, $Res Function(_$HintFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? level = freezed,
    Object? placeholder = freezed,
    Object? required = null,
    Object? children = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$HintFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HintFieldImpl implements HintField {
  const _$HintFieldImpl(
      {required this.id,
      this.label,
      this.level,
      this.placeholder,
      this.required = false,
      this.children,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'HINT';

  factory _$HintFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$HintFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? level;
  @override
  final String? placeholder;
  @override
  @JsonKey()
  final bool required;
  @override
  final List<Field>? children;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.hint(id: $id, label: $label, level: $level, placeholder: $placeholder, required: $required, children: $children, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HintFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder) &&
            (identical(other.required, required) ||
                other.required == required) &&
            const DeepCollectionEquality().equals(other.children, children) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      level,
      placeholder,
      required,
      const DeepCollectionEquality().hash(children),
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HintFieldImplCopyWith<_$HintFieldImpl> get copyWith =>
      __$$HintFieldImplCopyWithImpl<_$HintFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return hint(id, label, level, placeholder, required, children, validations,
        conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return hint?.call(id, label, level, placeholder, required, children,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (hint != null) {
      return hint(id, label, level, placeholder, required, children,
          validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return hint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return hint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (hint != null) {
      return hint(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HintFieldImplToJson(
      this,
    );
  }
}

abstract class HintField implements Field {
  const factory HintField(
      {required final String id,
      final String? label,
      final String? level,
      final String? placeholder,
      final bool required,
      final List<Field>? children,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$HintFieldImpl;

  factory HintField.fromJson(Map<String, dynamic> json) =
      _$HintFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get level;
  String? get placeholder;
  bool get required;
  List<Field>? get children;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HintFieldImplCopyWith<_$HintFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RadioGroupFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$RadioGroupFieldImplCopyWith(_$RadioGroupFieldImpl value,
          $Res Function(_$RadioGroupFieldImpl) then) =
      __$$RadioGroupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      int numberOfColumns,
      String? lookupId,
      List<LookupItem>? options,
      String? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$RadioGroupFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$RadioGroupFieldImpl>
    implements _$$RadioGroupFieldImplCopyWith<$Res> {
  __$$RadioGroupFieldImplCopyWithImpl(
      _$RadioGroupFieldImpl _value, $Res Function(_$RadioGroupFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? numberOfColumns = null,
    Object? lookupId = freezed,
    Object? options = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$RadioGroupFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfColumns: null == numberOfColumns
          ? _value.numberOfColumns
          : numberOfColumns // ignore: cast_nullable_to_non_nullable
              as int,
      lookupId: freezed == lookupId
          ? _value.lookupId
          : lookupId // ignore: cast_nullable_to_non_nullable
              as String?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<LookupItem>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RadioGroupFieldImpl implements RadioGroupField {
  const _$RadioGroupFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.numberOfColumns = 1,
      this.lookupId,
      this.options,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'RADIO_GROUP';

  factory _$RadioGroupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$RadioGroupFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  @JsonKey()
  final int numberOfColumns;
  @override
  final String? lookupId;
  @override
  final List<LookupItem>? options;
  @override
  final String? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.radioGroup(id: $id, label: $label, required: $required, numberOfColumns: $numberOfColumns, lookupId: $lookupId, options: $options, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RadioGroupFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.numberOfColumns, numberOfColumns) ||
                other.numberOfColumns == numberOfColumns) &&
            (identical(other.lookupId, lookupId) ||
                other.lookupId == lookupId) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      numberOfColumns,
      lookupId,
      const DeepCollectionEquality().hash(options),
      value,
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RadioGroupFieldImplCopyWith<_$RadioGroupFieldImpl> get copyWith =>
      __$$RadioGroupFieldImplCopyWithImpl<_$RadioGroupFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return radioGroup(id, label, required, numberOfColumns, lookupId, options,
        value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return radioGroup?.call(id, label, required, numberOfColumns, lookupId,
        options, value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (radioGroup != null) {
      return radioGroup(id, label, required, numberOfColumns, lookupId, options,
          value, validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return radioGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return radioGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (radioGroup != null) {
      return radioGroup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RadioGroupFieldImplToJson(
      this,
    );
  }
}

abstract class RadioGroupField implements Field {
  const factory RadioGroupField(
      {required final String id,
      final String? label,
      final bool required,
      final int numberOfColumns,
      final String? lookupId,
      final List<LookupItem>? options,
      final String? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$RadioGroupFieldImpl;

  factory RadioGroupField.fromJson(Map<String, dynamic> json) =
      _$RadioGroupFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  int get numberOfColumns;
  String? get lookupId;
  List<LookupItem>? get options;
  String? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RadioGroupFieldImplCopyWith<_$RadioGroupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckBoxGroupFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$CheckBoxGroupFieldImplCopyWith(_$CheckBoxGroupFieldImpl value,
          $Res Function(_$CheckBoxGroupFieldImpl) then) =
      __$$CheckBoxGroupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      bool required,
      int numberOfColumns,
      List<LookupItem>? options,
      List<String>? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$CheckBoxGroupFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$CheckBoxGroupFieldImpl>
    implements _$$CheckBoxGroupFieldImplCopyWith<$Res> {
  __$$CheckBoxGroupFieldImplCopyWithImpl(_$CheckBoxGroupFieldImpl _value,
      $Res Function(_$CheckBoxGroupFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? required = null,
    Object? numberOfColumns = null,
    Object? options = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$CheckBoxGroupFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: null == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfColumns: null == numberOfColumns
          ? _value.numberOfColumns
          : numberOfColumns // ignore: cast_nullable_to_non_nullable
              as int,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<LookupItem>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckBoxGroupFieldImpl implements CheckBoxGroupField {
  const _$CheckBoxGroupFieldImpl(
      {required this.id,
      this.label,
      this.required = false,
      this.numberOfColumns = 1,
      this.options,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'CHECKBOX_GROUP';

  factory _$CheckBoxGroupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckBoxGroupFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  @JsonKey()
  final bool required;
  @override
  @JsonKey()
  final int numberOfColumns;
  @override
  final List<LookupItem>? options;
  @override
  final List<String>? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.checkBoxGroup(id: $id, label: $label, required: $required, numberOfColumns: $numberOfColumns, options: $options, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckBoxGroupFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.numberOfColumns, numberOfColumns) ||
                other.numberOfColumns == numberOfColumns) &&
            const DeepCollectionEquality().equals(other.options, options) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      required,
      numberOfColumns,
      const DeepCollectionEquality().hash(options),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckBoxGroupFieldImplCopyWith<_$CheckBoxGroupFieldImpl> get copyWith =>
      __$$CheckBoxGroupFieldImplCopyWithImpl<_$CheckBoxGroupFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return checkBoxGroup(id, label, required, numberOfColumns, options, value,
        validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return checkBoxGroup?.call(id, label, required, numberOfColumns, options,
        value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (checkBoxGroup != null) {
      return checkBoxGroup(id, label, required, numberOfColumns, options, value,
          validations, conditional, actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return checkBoxGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return checkBoxGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (checkBoxGroup != null) {
      return checkBoxGroup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckBoxGroupFieldImplToJson(
      this,
    );
  }
}

abstract class CheckBoxGroupField implements Field {
  const factory CheckBoxGroupField(
      {required final String id,
      final String? label,
      final bool required,
      final int numberOfColumns,
      final List<LookupItem>? options,
      final List<String>? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$CheckBoxGroupFieldImpl;

  factory CheckBoxGroupField.fromJson(Map<String, dynamic> json) =
      _$CheckBoxGroupFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  bool get required;
  int get numberOfColumns;
  List<LookupItem>? get options;
  List<String>? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckBoxGroupFieldImplCopyWith<_$CheckBoxGroupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RepeaterGroupFieldImplCopyWith<$Res>
    implements $FieldCopyWith<$Res> {
  factory _$$RepeaterGroupFieldImplCopyWith(_$RepeaterGroupFieldImpl value,
          $Res Function(_$RepeaterGroupFieldImpl) then) =
      __$$RepeaterGroupFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? label,
      String? description,
      String? templateTitle,
      String? addButtonLabel,
      List<Field>? template,
      @JsonKey(readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
      List<List<Field>>? fieldsGroups,
      List<dynamic>? value,
      List<Validation>? validations,
      Conditional? conditional,
      List<ActionConfig>? actions});

  @override
  $ConditionalCopyWith<$Res>? get conditional;
}

/// @nodoc
class __$$RepeaterGroupFieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$RepeaterGroupFieldImpl>
    implements _$$RepeaterGroupFieldImplCopyWith<$Res> {
  __$$RepeaterGroupFieldImplCopyWithImpl(_$RepeaterGroupFieldImpl _value,
      $Res Function(_$RepeaterGroupFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? label = freezed,
    Object? description = freezed,
    Object? templateTitle = freezed,
    Object? addButtonLabel = freezed,
    Object? template = freezed,
    Object? fieldsGroups = freezed,
    Object? value = freezed,
    Object? validations = freezed,
    Object? conditional = freezed,
    Object? actions = freezed,
  }) {
    return _then(_$RepeaterGroupFieldImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      templateTitle: freezed == templateTitle
          ? _value.templateTitle
          : templateTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      addButtonLabel: freezed == addButtonLabel
          ? _value.addButtonLabel
          : addButtonLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      template: freezed == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      fieldsGroups: freezed == fieldsGroups
          ? _value.fieldsGroups
          : fieldsGroups // ignore: cast_nullable_to_non_nullable
              as List<List<Field>>?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      validations: freezed == validations
          ? _value.validations
          : validations // ignore: cast_nullable_to_non_nullable
              as List<Validation>?,
      conditional: freezed == conditional
          ? _value.conditional
          : conditional // ignore: cast_nullable_to_non_nullable
              as Conditional?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<ActionConfig>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepeaterGroupFieldImpl implements RepeaterGroupField {
  const _$RepeaterGroupFieldImpl(
      {required this.id,
      this.label,
      this.description,
      this.templateTitle,
      this.addButtonLabel,
      this.template,
      @JsonKey(readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
      this.fieldsGroups,
      this.value,
      this.validations,
      this.conditional,
      this.actions,
      final String? $type})
      : $type = $type ?? 'REPEATER_GROUP';

  factory _$RepeaterGroupFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepeaterGroupFieldImplFromJson(json);

  @override
  final String id;
  @override
  final String? label;
  @override
  final String? description;
  @override
  final String? templateTitle;
  @override
  final String? addButtonLabel;
  @override
  final List<Field>? template;
  @override
  @JsonKey(readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
  final List<List<Field>>? fieldsGroups;
  @override
  final List<dynamic>? value;
  @override
  final List<Validation>? validations;
  @override
  final Conditional? conditional;
  @override
  final List<ActionConfig>? actions;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Field.repeaterGroup(id: $id, label: $label, description: $description, templateTitle: $templateTitle, addButtonLabel: $addButtonLabel, template: $template, fieldsGroups: $fieldsGroups, value: $value, validations: $validations, conditional: $conditional, actions: $actions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepeaterGroupFieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.templateTitle, templateTitle) ||
                other.templateTitle == templateTitle) &&
            (identical(other.addButtonLabel, addButtonLabel) ||
                other.addButtonLabel == addButtonLabel) &&
            const DeepCollectionEquality().equals(other.template, template) &&
            const DeepCollectionEquality()
                .equals(other.fieldsGroups, fieldsGroups) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.validations, validations) &&
            (identical(other.conditional, conditional) ||
                other.conditional == conditional) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      label,
      description,
      templateTitle,
      addButtonLabel,
      const DeepCollectionEquality().hash(template),
      const DeepCollectionEquality().hash(fieldsGroups),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(validations),
      conditional,
      const DeepCollectionEquality().hash(actions));

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepeaterGroupFieldImplCopyWith<_$RepeaterGroupFieldImpl> get copyWith =>
      __$$RepeaterGroupFieldImplCopyWithImpl<_$RepeaterGroupFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        text,
    required TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        file,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        amount,
    required TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        selection,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        dropdown,
    required TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkbox,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        datePicker,
    required TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        link,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radio,
    required TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        signature,
    required TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        group,
    required TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        hint,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        radioGroup,
    required TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        checkBoxGroup,
    required TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)
        repeaterGroup,
  }) {
    return repeaterGroup(id, label, description, templateTitle, addButtonLabel,
        template, fieldsGroups, value, validations, conditional, actions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult? Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult? Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult? Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult? Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult? Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult? Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult? Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult? Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult? Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
  }) {
    return repeaterGroup?.call(
        id,
        label,
        description,
        templateTitle,
        addButtonLabel,
        template,
        fieldsGroups,
        value,
        validations,
        conditional,
        actions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        text,
    TResult Function(
            String id,
            String? label,
            String? title,
            String? description,
            IconModelId? icon,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        file,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            String? suffix,
            bool required,
            int? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        amount,
    TResult Function(
            String id,
            String? label,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            bool required,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        selection,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        dropdown,
    TResult Function(
            String id,
            String? label,
            String? placeholder,
            bool required,
            bool? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkbox,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            DateTime? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        datePicker,
    TResult Function(
            String id,
            String? label,
            bool required,
            String? placeholder,
            String? suffix,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        link,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radio,
    TResult Function(
            String id,
            String? label,
            bool required,
            FileValue? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        signature,
    TResult Function(
            String id,
            String? label,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        group,
    TResult Function(
            String id,
            String? label,
            String? level,
            String? placeholder,
            bool required,
            List<Field>? children,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        hint,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            String? lookupId,
            List<LookupItem>? options,
            String? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        radioGroup,
    TResult Function(
            String id,
            String? label,
            bool required,
            int numberOfColumns,
            List<LookupItem>? options,
            List<String>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        checkBoxGroup,
    TResult Function(
            String id,
            String? label,
            String? description,
            String? templateTitle,
            String? addButtonLabel,
            List<Field>? template,
            @JsonKey(
                readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
            List<List<Field>>? fieldsGroups,
            List<dynamic>? value,
            List<Validation>? validations,
            Conditional? conditional,
            List<ActionConfig>? actions)?
        repeaterGroup,
    required TResult orElse(),
  }) {
    if (repeaterGroup != null) {
      return repeaterGroup(
          id,
          label,
          description,
          templateTitle,
          addButtonLabel,
          template,
          fieldsGroups,
          value,
          validations,
          conditional,
          actions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextField value) text,
    required TResult Function(FileField value) file,
    required TResult Function(AmountField value) amount,
    required TResult Function(SelectionField value) selection,
    required TResult Function(DropdownField value) dropdown,
    required TResult Function(CheckboxField value) checkbox,
    required TResult Function(DatePickerField value) datePicker,
    required TResult Function(LinkField value) link,
    required TResult Function(RadioField value) radio,
    required TResult Function(SignatureField value) signature,
    required TResult Function(GroupField value) group,
    required TResult Function(HintField value) hint,
    required TResult Function(RadioGroupField value) radioGroup,
    required TResult Function(CheckBoxGroupField value) checkBoxGroup,
    required TResult Function(RepeaterGroupField value) repeaterGroup,
  }) {
    return repeaterGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextField value)? text,
    TResult? Function(FileField value)? file,
    TResult? Function(AmountField value)? amount,
    TResult? Function(SelectionField value)? selection,
    TResult? Function(DropdownField value)? dropdown,
    TResult? Function(CheckboxField value)? checkbox,
    TResult? Function(DatePickerField value)? datePicker,
    TResult? Function(LinkField value)? link,
    TResult? Function(RadioField value)? radio,
    TResult? Function(SignatureField value)? signature,
    TResult? Function(GroupField value)? group,
    TResult? Function(HintField value)? hint,
    TResult? Function(RadioGroupField value)? radioGroup,
    TResult? Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult? Function(RepeaterGroupField value)? repeaterGroup,
  }) {
    return repeaterGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextField value)? text,
    TResult Function(FileField value)? file,
    TResult Function(AmountField value)? amount,
    TResult Function(SelectionField value)? selection,
    TResult Function(DropdownField value)? dropdown,
    TResult Function(CheckboxField value)? checkbox,
    TResult Function(DatePickerField value)? datePicker,
    TResult Function(LinkField value)? link,
    TResult Function(RadioField value)? radio,
    TResult Function(SignatureField value)? signature,
    TResult Function(GroupField value)? group,
    TResult Function(HintField value)? hint,
    TResult Function(RadioGroupField value)? radioGroup,
    TResult Function(CheckBoxGroupField value)? checkBoxGroup,
    TResult Function(RepeaterGroupField value)? repeaterGroup,
    required TResult orElse(),
  }) {
    if (repeaterGroup != null) {
      return repeaterGroup(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeaterGroupFieldImplToJson(
      this,
    );
  }
}

abstract class RepeaterGroupField implements Field {
  const factory RepeaterGroupField(
      {required final String id,
      final String? label,
      final String? description,
      final String? templateTitle,
      final String? addButtonLabel,
      final List<Field>? template,
      @JsonKey(readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
      final List<List<Field>>? fieldsGroups,
      final List<dynamic>? value,
      final List<Validation>? validations,
      final Conditional? conditional,
      final List<ActionConfig>? actions}) = _$RepeaterGroupFieldImpl;

  factory RepeaterGroupField.fromJson(Map<String, dynamic> json) =
      _$RepeaterGroupFieldImpl.fromJson;

  @override
  String get id;
  @override
  String? get label;
  String? get description;
  String? get templateTitle;
  String? get addButtonLabel;
  List<Field>? get template;
  @JsonKey(readValue: parseRepeaterValue, fromJson: convertRepeaterValue)
  List<List<Field>>? get fieldsGroups;
  List<dynamic>? get value;
  @override
  List<Validation>? get validations;
  @override
  Conditional? get conditional;
  @override
  List<ActionConfig>? get actions;

  /// Create a copy of Field
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepeaterGroupFieldImplCopyWith<_$RepeaterGroupFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileValue _$FileValueFromJson(Map<String, dynamic> json) {
  return _FileValue.fromJson(json);
}

/// @nodoc
mixin _$FileValue {
  @JsonKey(readValue: documentIdFromJson)
  String get documentUuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get mimeType => throw _privateConstructorUsedError;
  int? get size => throw _privateConstructorUsedError;

  /// Serializes this FileValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileValueCopyWith<FileValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileValueCopyWith<$Res> {
  factory $FileValueCopyWith(FileValue value, $Res Function(FileValue) then) =
      _$FileValueCopyWithImpl<$Res, FileValue>;
  @useResult
  $Res call(
      {@JsonKey(readValue: documentIdFromJson) String documentUuid,
      String name,
      String mimeType,
      int? size});
}

/// @nodoc
class _$FileValueCopyWithImpl<$Res, $Val extends FileValue>
    implements $FileValueCopyWith<$Res> {
  _$FileValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentUuid = null,
    Object? name = null,
    Object? mimeType = null,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      documentUuid: null == documentUuid
          ? _value.documentUuid
          : documentUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileValueImplCopyWith<$Res>
    implements $FileValueCopyWith<$Res> {
  factory _$$FileValueImplCopyWith(
          _$FileValueImpl value, $Res Function(_$FileValueImpl) then) =
      __$$FileValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: documentIdFromJson) String documentUuid,
      String name,
      String mimeType,
      int? size});
}

/// @nodoc
class __$$FileValueImplCopyWithImpl<$Res>
    extends _$FileValueCopyWithImpl<$Res, _$FileValueImpl>
    implements _$$FileValueImplCopyWith<$Res> {
  __$$FileValueImplCopyWithImpl(
      _$FileValueImpl _value, $Res Function(_$FileValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentUuid = null,
    Object? name = null,
    Object? mimeType = null,
    Object? size = freezed,
  }) {
    return _then(_$FileValueImpl(
      documentUuid: null == documentUuid
          ? _value.documentUuid
          : documentUuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mimeType: null == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileValueImpl implements _FileValue {
  _$FileValueImpl(
      {@JsonKey(readValue: documentIdFromJson) required this.documentUuid,
      required this.name,
      required this.mimeType,
      this.size});

  factory _$FileValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileValueImplFromJson(json);

  @override
  @JsonKey(readValue: documentIdFromJson)
  final String documentUuid;
  @override
  final String name;
  @override
  final String mimeType;
  @override
  final int? size;

  @override
  String toString() {
    return 'FileValue(documentUuid: $documentUuid, name: $name, mimeType: $mimeType, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileValueImpl &&
            (identical(other.documentUuid, documentUuid) ||
                other.documentUuid == documentUuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, documentUuid, name, mimeType, size);

  /// Create a copy of FileValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileValueImplCopyWith<_$FileValueImpl> get copyWith =>
      __$$FileValueImplCopyWithImpl<_$FileValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileValueImplToJson(
      this,
    );
  }
}

abstract class _FileValue implements FileValue {
  factory _FileValue(
      {@JsonKey(readValue: documentIdFromJson)
      required final String documentUuid,
      required final String name,
      required final String mimeType,
      final int? size}) = _$FileValueImpl;

  factory _FileValue.fromJson(Map<String, dynamic> json) =
      _$FileValueImpl.fromJson;

  @override
  @JsonKey(readValue: documentIdFromJson)
  String get documentUuid;
  @override
  String get name;
  @override
  String get mimeType;
  @override
  int? get size;

  /// Create a copy of FileValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileValueImplCopyWith<_$FileValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
