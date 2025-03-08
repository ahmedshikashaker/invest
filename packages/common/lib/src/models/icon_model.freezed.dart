// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IconModel _$IconModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'id':
      return IconModelId.fromJson(json);
    case 'base64':
      return IconModelBase64.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'IconModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$IconModel {
  ColorThemeModel? get color => throw _privateConstructorUsedError;
  ColorThemeModel? get backgroundColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        id,
    required TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        base64,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult? Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IconModelId value) id,
    required TResult Function(IconModelBase64 value) base64,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IconModelId value)? id,
    TResult? Function(IconModelBase64 value)? base64,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IconModelId value)? id,
    TResult Function(IconModelBase64 value)? base64,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this IconModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IconModelCopyWith<IconModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconModelCopyWith<$Res> {
  factory $IconModelCopyWith(IconModel value, $Res Function(IconModel) then) =
      _$IconModelCopyWithImpl<$Res, IconModel>;
  @useResult
  $Res call({ColorThemeModel? color, ColorThemeModel? backgroundColor});

  $ColorThemeModelCopyWith<$Res>? get color;
  $ColorThemeModelCopyWith<$Res>? get backgroundColor;
}

/// @nodoc
class _$IconModelCopyWithImpl<$Res, $Val extends IconModel>
    implements $IconModelCopyWith<$Res> {
  _$IconModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
    ) as $Val);
  }

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorThemeModelCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ColorThemeModelCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ColorThemeModelCopyWith<$Res>? get backgroundColor {
    if (_value.backgroundColor == null) {
      return null;
    }

    return $ColorThemeModelCopyWith<$Res>(_value.backgroundColor!, (value) {
      return _then(_value.copyWith(backgroundColor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IconModelIdImplCopyWith<$Res>
    implements $IconModelCopyWith<$Res> {
  factory _$$IconModelIdImplCopyWith(
          _$IconModelIdImpl value, $Res Function(_$IconModelIdImpl) then) =
      __$$IconModelIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, ColorThemeModel? color, ColorThemeModel? backgroundColor});

  @override
  $ColorThemeModelCopyWith<$Res>? get color;
  @override
  $ColorThemeModelCopyWith<$Res>? get backgroundColor;
}

/// @nodoc
class __$$IconModelIdImplCopyWithImpl<$Res>
    extends _$IconModelCopyWithImpl<$Res, _$IconModelIdImpl>
    implements _$$IconModelIdImplCopyWith<$Res> {
  __$$IconModelIdImplCopyWithImpl(
      _$IconModelIdImpl _value, $Res Function(_$IconModelIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$IconModelIdImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconModelIdImpl extends IconModelId {
  _$IconModelIdImpl(
      {this.id, this.color, this.backgroundColor, final String? $type})
      : $type = $type ?? 'id',
        super._();

  factory _$IconModelIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$IconModelIdImplFromJson(json);

  @override
  final String? id;
  @override
  final ColorThemeModel? color;
  @override
  final ColorThemeModel? backgroundColor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IconModel.id(id: $id, color: $color, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconModelIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, color, backgroundColor);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconModelIdImplCopyWith<_$IconModelIdImpl> get copyWith =>
      __$$IconModelIdImplCopyWithImpl<_$IconModelIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        id,
    required TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        base64,
  }) {
    return id(this.id, color, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult? Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
  }) {
    return id?.call(this.id, color, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this.id, color, backgroundColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IconModelId value) id,
    required TResult Function(IconModelBase64 value) base64,
  }) {
    return id(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IconModelId value)? id,
    TResult? Function(IconModelBase64 value)? base64,
  }) {
    return id?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IconModelId value)? id,
    TResult Function(IconModelBase64 value)? base64,
    required TResult orElse(),
  }) {
    if (id != null) {
      return id(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IconModelIdImplToJson(
      this,
    );
  }
}

abstract class IconModelId extends IconModel {
  factory IconModelId(
      {final String? id,
      final ColorThemeModel? color,
      final ColorThemeModel? backgroundColor}) = _$IconModelIdImpl;
  IconModelId._() : super._();

  factory IconModelId.fromJson(Map<String, dynamic> json) =
      _$IconModelIdImpl.fromJson;

  String? get id;
  @override
  ColorThemeModel? get color;
  @override
  ColorThemeModel? get backgroundColor;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconModelIdImplCopyWith<_$IconModelIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IconModelBase64ImplCopyWith<$Res>
    implements $IconModelCopyWith<$Res> {
  factory _$$IconModelBase64ImplCopyWith(_$IconModelBase64Impl value,
          $Res Function(_$IconModelBase64Impl) then) =
      __$$IconModelBase64ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? base64,
      ColorThemeModel? color,
      ColorThemeModel? backgroundColor});

  @override
  $ColorThemeModelCopyWith<$Res>? get color;
  @override
  $ColorThemeModelCopyWith<$Res>? get backgroundColor;
}

/// @nodoc
class __$$IconModelBase64ImplCopyWithImpl<$Res>
    extends _$IconModelCopyWithImpl<$Res, _$IconModelBase64Impl>
    implements _$$IconModelBase64ImplCopyWith<$Res> {
  __$$IconModelBase64ImplCopyWithImpl(
      _$IconModelBase64Impl _value, $Res Function(_$IconModelBase64Impl) _then)
      : super(_value, _then);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base64 = freezed,
    Object? color = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$IconModelBase64Impl(
      base64: freezed == base64
          ? _value.base64
          : base64 // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as ColorThemeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IconModelBase64Impl extends IconModelBase64 {
  _$IconModelBase64Impl(
      {this.base64, this.color, this.backgroundColor, final String? $type})
      : $type = $type ?? 'base64',
        super._();

  factory _$IconModelBase64Impl.fromJson(Map<String, dynamic> json) =>
      _$$IconModelBase64ImplFromJson(json);

  @override
  final String? base64;
  @override
  final ColorThemeModel? color;
  @override
  final ColorThemeModel? backgroundColor;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'IconModel.base64(base64: $base64, color: $color, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconModelBase64Impl &&
            (identical(other.base64, base64) || other.base64 == base64) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, base64, color, backgroundColor);

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IconModelBase64ImplCopyWith<_$IconModelBase64Impl> get copyWith =>
      __$$IconModelBase64ImplCopyWithImpl<_$IconModelBase64Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        id,
    required TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)
        base64,
  }) {
    return base64(this.base64, color, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult? Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
  }) {
    return base64?.call(this.base64, color, backgroundColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? id, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        id,
    TResult Function(String? base64, ColorThemeModel? color,
            ColorThemeModel? backgroundColor)?
        base64,
    required TResult orElse(),
  }) {
    if (base64 != null) {
      return base64(this.base64, color, backgroundColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IconModelId value) id,
    required TResult Function(IconModelBase64 value) base64,
  }) {
    return base64(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IconModelId value)? id,
    TResult? Function(IconModelBase64 value)? base64,
  }) {
    return base64?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IconModelId value)? id,
    TResult Function(IconModelBase64 value)? base64,
    required TResult orElse(),
  }) {
    if (base64 != null) {
      return base64(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IconModelBase64ImplToJson(
      this,
    );
  }
}

abstract class IconModelBase64 extends IconModel {
  factory IconModelBase64(
      {final String? base64,
      final ColorThemeModel? color,
      final ColorThemeModel? backgroundColor}) = _$IconModelBase64Impl;
  IconModelBase64._() : super._();

  factory IconModelBase64.fromJson(Map<String, dynamic> json) =
      _$IconModelBase64Impl.fromJson;

  String? get base64;
  @override
  ColorThemeModel? get color;
  @override
  ColorThemeModel? get backgroundColor;

  /// Create a copy of IconModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IconModelBase64ImplCopyWith<_$IconModelBase64Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
