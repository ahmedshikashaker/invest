// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Validation _$ValidationFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'REGEX':
      return RegexValidation.fromJson(json);
    case 'MIN_LENGTH':
      return MinLengthValidation.fromJson(json);
    case 'MIME_TYPE':
      return MimeTypeValidation.fromJson(json);
    case 'MAX_SIZE':
      return MaxSizeValidation.fromJson(json);
    case 'REQUIRED':
      return RequiredValidation.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Validation', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Validation {
  Object get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Validation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ValidationCopyWith<Validation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationCopyWith<$Res> {
  factory $ValidationCopyWith(
          Validation value, $Res Function(Validation) then) =
      _$ValidationCopyWithImpl<$Res, Validation>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$ValidationCopyWithImpl<$Res, $Val extends Validation>
    implements $ValidationCopyWith<$Res> {
  _$ValidationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegexValidationImplCopyWith<$Res>
    implements $ValidationCopyWith<$Res> {
  factory _$$RegexValidationImplCopyWith(_$RegexValidationImpl value,
          $Res Function(_$RegexValidationImpl) then) =
      __$$RegexValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String errorMessage});
}

/// @nodoc
class __$$RegexValidationImplCopyWithImpl<$Res>
    extends _$ValidationCopyWithImpl<$Res, _$RegexValidationImpl>
    implements _$$RegexValidationImplCopyWith<$Res> {
  __$$RegexValidationImplCopyWithImpl(
      _$RegexValidationImpl _value, $Res Function(_$RegexValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RegexValidationImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegexValidationImpl implements RegexValidation {
  const _$RegexValidationImpl(
      {required this.value, required this.errorMessage, final String? $type})
      : $type = $type ?? 'REGEX';

  factory _$RegexValidationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegexValidationImplFromJson(json);

  @override
  final String value;
  @override
  final String errorMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Validation.regex(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegexValidationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegexValidationImplCopyWith<_$RegexValidationImpl> get copyWith =>
      __$$RegexValidationImplCopyWithImpl<_$RegexValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) {
    return regex(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) {
    return regex?.call(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) {
    if (regex != null) {
      return regex(value, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) {
    return regex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) {
    return regex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) {
    if (regex != null) {
      return regex(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RegexValidationImplToJson(
      this,
    );
  }
}

abstract class RegexValidation implements Validation {
  const factory RegexValidation(
      {required final String value,
      required final String errorMessage}) = _$RegexValidationImpl;

  factory RegexValidation.fromJson(Map<String, dynamic> json) =
      _$RegexValidationImpl.fromJson;

  @override
  String get value;
  @override
  String get errorMessage;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegexValidationImplCopyWith<_$RegexValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MinLengthValidationImplCopyWith<$Res>
    implements $ValidationCopyWith<$Res> {
  factory _$$MinLengthValidationImplCopyWith(_$MinLengthValidationImpl value,
          $Res Function(_$MinLengthValidationImpl) then) =
      __$$MinLengthValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String errorMessage});
}

/// @nodoc
class __$$MinLengthValidationImplCopyWithImpl<$Res>
    extends _$ValidationCopyWithImpl<$Res, _$MinLengthValidationImpl>
    implements _$$MinLengthValidationImplCopyWith<$Res> {
  __$$MinLengthValidationImplCopyWithImpl(_$MinLengthValidationImpl _value,
      $Res Function(_$MinLengthValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$MinLengthValidationImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MinLengthValidationImpl implements MinLengthValidation {
  const _$MinLengthValidationImpl(
      {required this.value, required this.errorMessage, final String? $type})
      : $type = $type ?? 'MIN_LENGTH';

  factory _$MinLengthValidationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MinLengthValidationImplFromJson(json);

  @override
  final int value;
  @override
  final String errorMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Validation.minLength(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MinLengthValidationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MinLengthValidationImplCopyWith<_$MinLengthValidationImpl> get copyWith =>
      __$$MinLengthValidationImplCopyWithImpl<_$MinLengthValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) {
    return minLength(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) {
    return minLength?.call(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(value, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) {
    return minLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) {
    return minLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) {
    if (minLength != null) {
      return minLength(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinLengthValidationImplToJson(
      this,
    );
  }
}

abstract class MinLengthValidation implements Validation {
  const factory MinLengthValidation(
      {required final int value,
      required final String errorMessage}) = _$MinLengthValidationImpl;

  factory MinLengthValidation.fromJson(Map<String, dynamic> json) =
      _$MinLengthValidationImpl.fromJson;

  @override
  int get value;
  @override
  String get errorMessage;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MinLengthValidationImplCopyWith<_$MinLengthValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MimeTypeValidationImplCopyWith<$Res>
    implements $ValidationCopyWith<$Res> {
  factory _$$MimeTypeValidationImplCopyWith(_$MimeTypeValidationImpl value,
          $Res Function(_$MimeTypeValidationImpl) then) =
      __$$MimeTypeValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> value, String errorMessage});
}

/// @nodoc
class __$$MimeTypeValidationImplCopyWithImpl<$Res>
    extends _$ValidationCopyWithImpl<$Res, _$MimeTypeValidationImpl>
    implements _$$MimeTypeValidationImplCopyWith<$Res> {
  __$$MimeTypeValidationImplCopyWithImpl(_$MimeTypeValidationImpl _value,
      $Res Function(_$MimeTypeValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$MimeTypeValidationImpl(
      value: null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<String>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MimeTypeValidationImpl implements MimeTypeValidation {
  const _$MimeTypeValidationImpl(
      {required final List<String> value,
      required this.errorMessage,
      final String? $type})
      : _value = value,
        $type = $type ?? 'MIME_TYPE';

  factory _$MimeTypeValidationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MimeTypeValidationImplFromJson(json);

  final List<String> _value;
  @override
  List<String> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  final String errorMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Validation.mimeType(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MimeTypeValidationImpl &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_value), errorMessage);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MimeTypeValidationImplCopyWith<_$MimeTypeValidationImpl> get copyWith =>
      __$$MimeTypeValidationImplCopyWithImpl<_$MimeTypeValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) {
    return mimeType(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) {
    return mimeType?.call(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) {
    if (mimeType != null) {
      return mimeType(value, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) {
    return mimeType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) {
    return mimeType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) {
    if (mimeType != null) {
      return mimeType(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MimeTypeValidationImplToJson(
      this,
    );
  }
}

abstract class MimeTypeValidation implements Validation {
  const factory MimeTypeValidation(
      {required final List<String> value,
      required final String errorMessage}) = _$MimeTypeValidationImpl;

  factory MimeTypeValidation.fromJson(Map<String, dynamic> json) =
      _$MimeTypeValidationImpl.fromJson;

  @override
  List<String> get value;
  @override
  String get errorMessage;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MimeTypeValidationImplCopyWith<_$MimeTypeValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaxSizeValidationImplCopyWith<$Res>
    implements $ValidationCopyWith<$Res> {
  factory _$$MaxSizeValidationImplCopyWith(_$MaxSizeValidationImpl value,
          $Res Function(_$MaxSizeValidationImpl) then) =
      __$$MaxSizeValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value, String errorMessage});
}

/// @nodoc
class __$$MaxSizeValidationImplCopyWithImpl<$Res>
    extends _$ValidationCopyWithImpl<$Res, _$MaxSizeValidationImpl>
    implements _$$MaxSizeValidationImplCopyWith<$Res> {
  __$$MaxSizeValidationImplCopyWithImpl(_$MaxSizeValidationImpl _value,
      $Res Function(_$MaxSizeValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$MaxSizeValidationImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MaxSizeValidationImpl implements MaxSizeValidation {
  const _$MaxSizeValidationImpl(
      {required this.value, required this.errorMessage, final String? $type})
      : $type = $type ?? 'MAX_SIZE';

  factory _$MaxSizeValidationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MaxSizeValidationImplFromJson(json);

  @override
  final int value;
  @override
  final String errorMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Validation.maxSize(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxSizeValidationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxSizeValidationImplCopyWith<_$MaxSizeValidationImpl> get copyWith =>
      __$$MaxSizeValidationImplCopyWithImpl<_$MaxSizeValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) {
    return maxSize(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) {
    return maxSize?.call(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) {
    if (maxSize != null) {
      return maxSize(value, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) {
    return maxSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) {
    return maxSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) {
    if (maxSize != null) {
      return maxSize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MaxSizeValidationImplToJson(
      this,
    );
  }
}

abstract class MaxSizeValidation implements Validation {
  const factory MaxSizeValidation(
      {required final int value,
      required final String errorMessage}) = _$MaxSizeValidationImpl;

  factory MaxSizeValidation.fromJson(Map<String, dynamic> json) =
      _$MaxSizeValidationImpl.fromJson;

  @override
  int get value;
  @override
  String get errorMessage;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaxSizeValidationImplCopyWith<_$MaxSizeValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequiredValidationImplCopyWith<$Res>
    implements $ValidationCopyWith<$Res> {
  factory _$$RequiredValidationImplCopyWith(_$RequiredValidationImpl value,
          $Res Function(_$RequiredValidationImpl) then) =
      __$$RequiredValidationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool value, String errorMessage});
}

/// @nodoc
class __$$RequiredValidationImplCopyWithImpl<$Res>
    extends _$ValidationCopyWithImpl<$Res, _$RequiredValidationImpl>
    implements _$$RequiredValidationImplCopyWith<$Res> {
  __$$RequiredValidationImplCopyWithImpl(_$RequiredValidationImpl _value,
      $Res Function(_$RequiredValidationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RequiredValidationImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequiredValidationImpl implements RequiredValidation {
  const _$RequiredValidationImpl(
      {required this.value, required this.errorMessage, final String? $type})
      : $type = $type ?? 'REQUIRED';

  factory _$RequiredValidationImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequiredValidationImplFromJson(json);

  @override
  final bool value;
  @override
  final String errorMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Validation.required(value: $value, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredValidationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, errorMessage);

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredValidationImplCopyWith<_$RequiredValidationImpl> get copyWith =>
      __$$RequiredValidationImplCopyWithImpl<_$RequiredValidationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String errorMessage) regex,
    required TResult Function(int value, String errorMessage) minLength,
    required TResult Function(List<String> value, String errorMessage) mimeType,
    required TResult Function(int value, String errorMessage) maxSize,
    required TResult Function(bool value, String errorMessage) required,
  }) {
    return required(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String errorMessage)? regex,
    TResult? Function(int value, String errorMessage)? minLength,
    TResult? Function(List<String> value, String errorMessage)? mimeType,
    TResult? Function(int value, String errorMessage)? maxSize,
    TResult? Function(bool value, String errorMessage)? required,
  }) {
    return required?.call(value, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String errorMessage)? regex,
    TResult Function(int value, String errorMessage)? minLength,
    TResult Function(List<String> value, String errorMessage)? mimeType,
    TResult Function(int value, String errorMessage)? maxSize,
    TResult Function(bool value, String errorMessage)? required,
    required TResult orElse(),
  }) {
    if (required != null) {
      return required(value, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegexValidation value) regex,
    required TResult Function(MinLengthValidation value) minLength,
    required TResult Function(MimeTypeValidation value) mimeType,
    required TResult Function(MaxSizeValidation value) maxSize,
    required TResult Function(RequiredValidation value) required,
  }) {
    return required(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegexValidation value)? regex,
    TResult? Function(MinLengthValidation value)? minLength,
    TResult? Function(MimeTypeValidation value)? mimeType,
    TResult? Function(MaxSizeValidation value)? maxSize,
    TResult? Function(RequiredValidation value)? required,
  }) {
    return required?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegexValidation value)? regex,
    TResult Function(MinLengthValidation value)? minLength,
    TResult Function(MimeTypeValidation value)? mimeType,
    TResult Function(MaxSizeValidation value)? maxSize,
    TResult Function(RequiredValidation value)? required,
    required TResult orElse(),
  }) {
    if (required != null) {
      return required(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RequiredValidationImplToJson(
      this,
    );
  }
}

abstract class RequiredValidation implements Validation {
  const factory RequiredValidation(
      {required final bool value,
      required final String errorMessage}) = _$RequiredValidationImpl;

  factory RequiredValidation.fromJson(Map<String, dynamic> json) =
      _$RequiredValidationImpl.fromJson;

  @override
  bool get value;
  @override
  String get errorMessage;

  /// Create a copy of Validation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredValidationImplCopyWith<_$RequiredValidationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
