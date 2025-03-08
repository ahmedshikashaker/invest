// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TemplateItem _$TemplateItemFromJson(Map<String, dynamic> json) {
  return _TemplateItem.fromJson(json);
}

/// @nodoc
mixin _$TemplateItem {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get placeholder => throw _privateConstructorUsedError;

  /// Serializes this TemplateItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemplateItemCopyWith<TemplateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateItemCopyWith<$Res> {
  factory $TemplateItemCopyWith(
          TemplateItem value, $Res Function(TemplateItem) then) =
      _$TemplateItemCopyWithImpl<$Res, TemplateItem>;
  @useResult
  $Res call({String id, String type, String? placeholder});
}

/// @nodoc
class _$TemplateItemCopyWithImpl<$Res, $Val extends TemplateItem>
    implements $TemplateItemCopyWith<$Res> {
  _$TemplateItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? placeholder = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateItemImplCopyWith<$Res>
    implements $TemplateItemCopyWith<$Res> {
  factory _$$TemplateItemImplCopyWith(
          _$TemplateItemImpl value, $Res Function(_$TemplateItemImpl) then) =
      __$$TemplateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String type, String? placeholder});
}

/// @nodoc
class __$$TemplateItemImplCopyWithImpl<$Res>
    extends _$TemplateItemCopyWithImpl<$Res, _$TemplateItemImpl>
    implements _$$TemplateItemImplCopyWith<$Res> {
  __$$TemplateItemImplCopyWithImpl(
      _$TemplateItemImpl _value, $Res Function(_$TemplateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? placeholder = freezed,
  }) {
    return _then(_$TemplateItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      placeholder: freezed == placeholder
          ? _value.placeholder
          : placeholder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateItemImpl implements _TemplateItem {
  _$TemplateItemImpl({required this.id, required this.type, this.placeholder});

  factory _$TemplateItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateItemImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final String? placeholder;

  @override
  String toString() {
    return 'TemplateItem(id: $id, type: $type, placeholder: $placeholder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.placeholder, placeholder) ||
                other.placeholder == placeholder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, placeholder);

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      __$$TemplateItemImplCopyWithImpl<_$TemplateItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateItemImplToJson(
      this,
    );
  }
}

abstract class _TemplateItem implements TemplateItem {
  factory _TemplateItem(
      {required final String id,
      required final String type,
      final String? placeholder}) = _$TemplateItemImpl;

  factory _TemplateItem.fromJson(Map<String, dynamic> json) =
      _$TemplateItemImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  String? get placeholder;

  /// Create a copy of TemplateItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemplateItemImplCopyWith<_$TemplateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
