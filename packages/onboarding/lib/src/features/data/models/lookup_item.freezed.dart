// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lookup_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LookupItem _$LookupItemFromJson(Map<String, dynamic> json) {
  return _LookupItem.fromJson(json);
}

/// @nodoc
mixin _$LookupItem {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Field> get fields => throw _privateConstructorUsedError;

  /// Serializes this LookupItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LookupItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LookupItemCopyWith<LookupItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LookupItemCopyWith<$Res> {
  factory $LookupItemCopyWith(
          LookupItem value, $Res Function(LookupItem) then) =
      _$LookupItemCopyWithImpl<$Res, LookupItem>;
  @useResult
  $Res call(
      {String value, String label, String? description, List<Field> fields});
}

/// @nodoc
class _$LookupItemCopyWithImpl<$Res, $Val extends LookupItem>
    implements $LookupItemCopyWith<$Res> {
  _$LookupItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LookupItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = freezed,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LookupItemImplCopyWith<$Res>
    implements $LookupItemCopyWith<$Res> {
  factory _$$LookupItemImplCopyWith(
          _$LookupItemImpl value, $Res Function(_$LookupItemImpl) then) =
      __$$LookupItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String value, String label, String? description, List<Field> fields});
}

/// @nodoc
class __$$LookupItemImplCopyWithImpl<$Res>
    extends _$LookupItemCopyWithImpl<$Res, _$LookupItemImpl>
    implements _$$LookupItemImplCopyWith<$Res> {
  __$$LookupItemImplCopyWithImpl(
      _$LookupItemImpl _value, $Res Function(_$LookupItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of LookupItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? description = freezed,
    Object? fields = null,
  }) {
    return _then(_$LookupItemImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LookupItemImpl implements _LookupItem {
  _$LookupItemImpl(
      {required this.value,
      required this.label,
      this.description,
      final List<Field> fields = const []})
      : _fields = fields;

  factory _$LookupItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$LookupItemImplFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final String? description;
  final List<Field> _fields;
  @override
  @JsonKey()
  List<Field> get fields {
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fields);
  }

  @override
  String toString() {
    return 'LookupItem(value: $value, label: $label, description: $description, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LookupItemImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, description,
      const DeepCollectionEquality().hash(_fields));

  /// Create a copy of LookupItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LookupItemImplCopyWith<_$LookupItemImpl> get copyWith =>
      __$$LookupItemImplCopyWithImpl<_$LookupItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LookupItemImplToJson(
      this,
    );
  }
}

abstract class _LookupItem implements LookupItem {
  factory _LookupItem(
      {required final String value,
      required final String label,
      final String? description,
      final List<Field> fields}) = _$LookupItemImpl;

  factory _LookupItem.fromJson(Map<String, dynamic> json) =
      _$LookupItemImpl.fromJson;

  @override
  String get value;
  @override
  String get label;
  @override
  String? get description;
  @override
  List<Field> get fields;

  /// Create a copy of LookupItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LookupItemImplCopyWith<_$LookupItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
