// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HttpRequestParams {
  String? get url => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        get,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        json,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        formData,
    required TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)
        multipart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult? Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestParams value) get,
    required TResult Function(JsonRequestParams value) json,
    required TResult Function(FormDataRequestParams value) formData,
    required TResult Function(MultipartRequestParams value) multipart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestParams value)? get,
    TResult? Function(JsonRequestParams value)? json,
    TResult? Function(FormDataRequestParams value)? formData,
    TResult? Function(MultipartRequestParams value)? multipart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestParams value)? get,
    TResult Function(JsonRequestParams value)? json,
    TResult Function(FormDataRequestParams value)? formData,
    TResult Function(MultipartRequestParams value)? multipart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HttpRequestParamsCopyWith<HttpRequestParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpRequestParamsCopyWith<$Res> {
  factory $HttpRequestParamsCopyWith(
          HttpRequestParams value, $Res Function(HttpRequestParams) then) =
      _$HttpRequestParamsCopyWithImpl<$Res, HttpRequestParams>;
  @useResult
  $Res call(
      {String? url, Map<String, dynamic>? data, Map<String, String>? headers});
}

/// @nodoc
class _$HttpRequestParamsCopyWithImpl<$Res, $Val extends HttpRequestParams>
    implements $HttpRequestParamsCopyWith<$Res> {
  _$HttpRequestParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRequestParamsImplCopyWith<$Res>
    implements $HttpRequestParamsCopyWith<$Res> {
  factory _$$GetRequestParamsImplCopyWith(_$GetRequestParamsImpl value,
          $Res Function(_$GetRequestParamsImpl) then) =
      __$$GetRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, Map<String, dynamic>? data, Map<String, String>? headers});
}

/// @nodoc
class __$$GetRequestParamsImplCopyWithImpl<$Res>
    extends _$HttpRequestParamsCopyWithImpl<$Res, _$GetRequestParamsImpl>
    implements _$$GetRequestParamsImplCopyWith<$Res> {
  __$$GetRequestParamsImplCopyWithImpl(_$GetRequestParamsImpl _value,
      $Res Function(_$GetRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$GetRequestParamsImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$GetRequestParamsImpl extends GetRequestParams {
  const _$GetRequestParamsImpl(
      {this.url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers})
      : _data = data,
        _headers = headers,
        super._();

  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpRequestParams.get(url: $url, data: $data, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRequestParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_headers));

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRequestParamsImplCopyWith<_$GetRequestParamsImpl> get copyWith =>
      __$$GetRequestParamsImplCopyWithImpl<_$GetRequestParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        get,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        json,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        formData,
    required TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)
        multipart,
  }) {
    return get(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult? Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
  }) {
    return get?.call(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(url, data, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestParams value) get,
    required TResult Function(JsonRequestParams value) json,
    required TResult Function(FormDataRequestParams value) formData,
    required TResult Function(MultipartRequestParams value) multipart,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestParams value)? get,
    TResult? Function(JsonRequestParams value)? json,
    TResult? Function(FormDataRequestParams value)? formData,
    TResult? Function(MultipartRequestParams value)? multipart,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestParams value)? get,
    TResult Function(JsonRequestParams value)? json,
    TResult Function(FormDataRequestParams value)? formData,
    TResult Function(MultipartRequestParams value)? multipart,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetRequestParams extends HttpRequestParams {
  const factory GetRequestParams(
      {final String? url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers}) = _$GetRequestParamsImpl;
  const GetRequestParams._() : super._();

  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  @override
  Map<String, String>? get headers;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRequestParamsImplCopyWith<_$GetRequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JsonRequestParamsImplCopyWith<$Res>
    implements $HttpRequestParamsCopyWith<$Res> {
  factory _$$JsonRequestParamsImplCopyWith(_$JsonRequestParamsImpl value,
          $Res Function(_$JsonRequestParamsImpl) then) =
      __$$JsonRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, Map<String, dynamic>? data, Map<String, String>? headers});
}

/// @nodoc
class __$$JsonRequestParamsImplCopyWithImpl<$Res>
    extends _$HttpRequestParamsCopyWithImpl<$Res, _$JsonRequestParamsImpl>
    implements _$$JsonRequestParamsImplCopyWith<$Res> {
  __$$JsonRequestParamsImplCopyWithImpl(_$JsonRequestParamsImpl _value,
      $Res Function(_$JsonRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$JsonRequestParamsImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$JsonRequestParamsImpl extends JsonRequestParams {
  const _$JsonRequestParamsImpl(
      {this.url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers})
      : _data = data,
        _headers = headers,
        super._();

  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpRequestParams.json(url: $url, data: $data, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JsonRequestParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_headers));

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JsonRequestParamsImplCopyWith<_$JsonRequestParamsImpl> get copyWith =>
      __$$JsonRequestParamsImplCopyWithImpl<_$JsonRequestParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        get,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        json,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        formData,
    required TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)
        multipart,
  }) {
    return json(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult? Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
  }) {
    return json?.call(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(url, data, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestParams value) get,
    required TResult Function(JsonRequestParams value) json,
    required TResult Function(FormDataRequestParams value) formData,
    required TResult Function(MultipartRequestParams value) multipart,
  }) {
    return json(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestParams value)? get,
    TResult? Function(JsonRequestParams value)? json,
    TResult? Function(FormDataRequestParams value)? formData,
    TResult? Function(MultipartRequestParams value)? multipart,
  }) {
    return json?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestParams value)? get,
    TResult Function(JsonRequestParams value)? json,
    TResult Function(FormDataRequestParams value)? formData,
    TResult Function(MultipartRequestParams value)? multipart,
    required TResult orElse(),
  }) {
    if (json != null) {
      return json(this);
    }
    return orElse();
  }
}

abstract class JsonRequestParams extends HttpRequestParams {
  const factory JsonRequestParams(
      {final String? url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers}) = _$JsonRequestParamsImpl;
  const JsonRequestParams._() : super._();

  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  @override
  Map<String, String>? get headers;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JsonRequestParamsImplCopyWith<_$JsonRequestParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormDataRequestParamsImplCopyWith<$Res>
    implements $HttpRequestParamsCopyWith<$Res> {
  factory _$$FormDataRequestParamsImplCopyWith(
          _$FormDataRequestParamsImpl value,
          $Res Function(_$FormDataRequestParamsImpl) then) =
      __$$FormDataRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, Map<String, dynamic>? data, Map<String, String>? headers});
}

/// @nodoc
class __$$FormDataRequestParamsImplCopyWithImpl<$Res>
    extends _$HttpRequestParamsCopyWithImpl<$Res, _$FormDataRequestParamsImpl>
    implements _$$FormDataRequestParamsImplCopyWith<$Res> {
  __$$FormDataRequestParamsImplCopyWithImpl(_$FormDataRequestParamsImpl _value,
      $Res Function(_$FormDataRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FormDataRequestParamsImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$FormDataRequestParamsImpl extends FormDataRequestParams {
  const _$FormDataRequestParamsImpl(
      {this.url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers})
      : _data = data,
        _headers = headers,
        super._();

  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpRequestParams.formData(url: $url, data: $data, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDataRequestParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_headers));

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDataRequestParamsImplCopyWith<_$FormDataRequestParamsImpl>
      get copyWith => __$$FormDataRequestParamsImplCopyWithImpl<
          _$FormDataRequestParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        get,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        json,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        formData,
    required TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)
        multipart,
  }) {
    return formData(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult? Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
  }) {
    return formData?.call(url, data, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
    required TResult orElse(),
  }) {
    if (formData != null) {
      return formData(url, data, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestParams value) get,
    required TResult Function(JsonRequestParams value) json,
    required TResult Function(FormDataRequestParams value) formData,
    required TResult Function(MultipartRequestParams value) multipart,
  }) {
    return formData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestParams value)? get,
    TResult? Function(JsonRequestParams value)? json,
    TResult? Function(FormDataRequestParams value)? formData,
    TResult? Function(MultipartRequestParams value)? multipart,
  }) {
    return formData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestParams value)? get,
    TResult Function(JsonRequestParams value)? json,
    TResult Function(FormDataRequestParams value)? formData,
    TResult Function(MultipartRequestParams value)? multipart,
    required TResult orElse(),
  }) {
    if (formData != null) {
      return formData(this);
    }
    return orElse();
  }
}

abstract class FormDataRequestParams extends HttpRequestParams {
  const factory FormDataRequestParams(
      {final String? url,
      final Map<String, dynamic>? data,
      final Map<String, String>? headers}) = _$FormDataRequestParamsImpl;
  const FormDataRequestParams._() : super._();

  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  @override
  Map<String, String>? get headers;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDataRequestParamsImplCopyWith<_$FormDataRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultipartRequestParamsImplCopyWith<$Res>
    implements $HttpRequestParamsCopyWith<$Res> {
  factory _$$MultipartRequestParamsImplCopyWith(
          _$MultipartRequestParamsImpl value,
          $Res Function(_$MultipartRequestParamsImpl) then) =
      __$$MultipartRequestParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url,
      Map<String, dynamic>? data,
      List<MultipartFile>? files,
      Map<String, String>? headers});
}

/// @nodoc
class __$$MultipartRequestParamsImplCopyWithImpl<$Res>
    extends _$HttpRequestParamsCopyWithImpl<$Res, _$MultipartRequestParamsImpl>
    implements _$$MultipartRequestParamsImplCopyWith<$Res> {
  __$$MultipartRequestParamsImplCopyWithImpl(
      _$MultipartRequestParamsImpl _value,
      $Res Function(_$MultipartRequestParamsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? data = freezed,
    Object? files = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$MultipartRequestParamsImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<MultipartFile>?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$MultipartRequestParamsImpl extends MultipartRequestParams {
  const _$MultipartRequestParamsImpl(
      {this.url,
      final Map<String, dynamic>? data,
      final List<MultipartFile>? files,
      final Map<String, String>? headers})
      : _data = data,
        _files = files,
        _headers = headers,
        super._();

  @override
  final String? url;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<MultipartFile>? _files;
  @override
  List<MultipartFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HttpRequestParams.multipart(url: $url, data: $data, files: $files, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultipartRequestParamsImpl &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_headers));

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultipartRequestParamsImplCopyWith<_$MultipartRequestParamsImpl>
      get copyWith => __$$MultipartRequestParamsImplCopyWithImpl<
          _$MultipartRequestParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        get,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        json,
    required TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)
        formData,
    required TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)
        multipart,
  }) {
    return multipart(url, data, files, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult? Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult? Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
  }) {
    return multipart?.call(url, data, files, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        get,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        json,
    TResult Function(String? url, Map<String, dynamic>? data,
            Map<String, String>? headers)?
        formData,
    TResult Function(String? url, Map<String, dynamic>? data,
            List<MultipartFile>? files, Map<String, String>? headers)?
        multipart,
    required TResult orElse(),
  }) {
    if (multipart != null) {
      return multipart(url, data, files, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRequestParams value) get,
    required TResult Function(JsonRequestParams value) json,
    required TResult Function(FormDataRequestParams value) formData,
    required TResult Function(MultipartRequestParams value) multipart,
  }) {
    return multipart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetRequestParams value)? get,
    TResult? Function(JsonRequestParams value)? json,
    TResult? Function(FormDataRequestParams value)? formData,
    TResult? Function(MultipartRequestParams value)? multipart,
  }) {
    return multipart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRequestParams value)? get,
    TResult Function(JsonRequestParams value)? json,
    TResult Function(FormDataRequestParams value)? formData,
    TResult Function(MultipartRequestParams value)? multipart,
    required TResult orElse(),
  }) {
    if (multipart != null) {
      return multipart(this);
    }
    return orElse();
  }
}

abstract class MultipartRequestParams extends HttpRequestParams {
  const factory MultipartRequestParams(
      {final String? url,
      final Map<String, dynamic>? data,
      final List<MultipartFile>? files,
      final Map<String, String>? headers}) = _$MultipartRequestParamsImpl;
  const MultipartRequestParams._() : super._();

  @override
  String? get url;
  @override
  Map<String, dynamic>? get data;
  List<MultipartFile>? get files;
  @override
  Map<String, String>? get headers;

  /// Create a copy of HttpRequestParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultipartRequestParamsImplCopyWith<_$MultipartRequestParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
