// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'color_theme_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ColorThemeModel _$ColorThemeModelFromJson(Map<String, dynamic> json) {
  return _ColorThemeModel.fromJson(json);
}

/// @nodoc
mixin _$ColorThemeModel {
  String? get light => throw _privateConstructorUsedError;
  String? get dark => throw _privateConstructorUsedError;

  /// Serializes this ColorThemeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ColorThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ColorThemeModelCopyWith<ColorThemeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColorThemeModelCopyWith<$Res> {
  factory $ColorThemeModelCopyWith(
          ColorThemeModel value, $Res Function(ColorThemeModel) then) =
      _$ColorThemeModelCopyWithImpl<$Res, ColorThemeModel>;
  @useResult
  $Res call({String? light, String? dark});
}

/// @nodoc
class _$ColorThemeModelCopyWithImpl<$Res, $Val extends ColorThemeModel>
    implements $ColorThemeModelCopyWith<$Res> {
  _$ColorThemeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ColorThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_value.copyWith(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as String?,
      dark: freezed == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColorThemeModelImplCopyWith<$Res>
    implements $ColorThemeModelCopyWith<$Res> {
  factory _$$ColorThemeModelImplCopyWith(_$ColorThemeModelImpl value,
          $Res Function(_$ColorThemeModelImpl) then) =
      __$$ColorThemeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? light, String? dark});
}

/// @nodoc
class __$$ColorThemeModelImplCopyWithImpl<$Res>
    extends _$ColorThemeModelCopyWithImpl<$Res, _$ColorThemeModelImpl>
    implements _$$ColorThemeModelImplCopyWith<$Res> {
  __$$ColorThemeModelImplCopyWithImpl(
      _$ColorThemeModelImpl _value, $Res Function(_$ColorThemeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ColorThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? light = freezed,
    Object? dark = freezed,
  }) {
    return _then(_$ColorThemeModelImpl(
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as String?,
      dark: freezed == dark
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColorThemeModelImpl implements _ColorThemeModel {
  _$ColorThemeModelImpl({this.light, this.dark});

  factory _$ColorThemeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColorThemeModelImplFromJson(json);

  @override
  final String? light;
  @override
  final String? dark;

  @override
  String toString() {
    return 'ColorThemeModel(light: $light, dark: $dark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColorThemeModelImpl &&
            (identical(other.light, light) || other.light == light) &&
            (identical(other.dark, dark) || other.dark == dark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, light, dark);

  /// Create a copy of ColorThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ColorThemeModelImplCopyWith<_$ColorThemeModelImpl> get copyWith =>
      __$$ColorThemeModelImplCopyWithImpl<_$ColorThemeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColorThemeModelImplToJson(
      this,
    );
  }
}

abstract class _ColorThemeModel implements ColorThemeModel {
  factory _ColorThemeModel({final String? light, final String? dark}) =
      _$ColorThemeModelImpl;

  factory _ColorThemeModel.fromJson(Map<String, dynamic> json) =
      _$ColorThemeModelImpl.fromJson;

  @override
  String? get light;
  @override
  String? get dark;

  /// Create a copy of ColorThemeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ColorThemeModelImplCopyWith<_$ColorThemeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
