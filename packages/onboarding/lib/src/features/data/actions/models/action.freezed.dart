// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionConfig _$ActionConfigFromJson(Map<String, dynamic> json) {
  return ActionConfigAPICall.fromJson(json);
}

/// @nodoc
mixin _$ActionConfig {
  @JsonKey(unknownEnumValue: ActionEvent.onApply)
  ActionEvent get event => throw _privateConstructorUsedError;
  APIActionTypeConfig get config => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)
        ApiCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)?
        ApiCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)?
        ApiCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionConfigAPICall value) ApiCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionConfigAPICall value)? ApiCall,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionConfigAPICall value)? ApiCall,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ActionConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionConfigCopyWith<ActionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionConfigCopyWith<$Res> {
  factory $ActionConfigCopyWith(
          ActionConfig value, $Res Function(ActionConfig) then) =
      _$ActionConfigCopyWithImpl<$Res, ActionConfig>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
      APIActionTypeConfig config});

  $APIActionTypeConfigCopyWith<$Res> get config;
}

/// @nodoc
class _$ActionConfigCopyWithImpl<$Res, $Val extends ActionConfig>
    implements $ActionConfigCopyWith<$Res> {
  _$ActionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? config = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ActionEvent,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as APIActionTypeConfig,
    ) as $Val);
  }

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $APIActionTypeConfigCopyWith<$Res> get config {
    return $APIActionTypeConfigCopyWith<$Res>(_value.config, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActionConfigAPICallImplCopyWith<$Res>
    implements $ActionConfigCopyWith<$Res> {
  factory _$$ActionConfigAPICallImplCopyWith(_$ActionConfigAPICallImpl value,
          $Res Function(_$ActionConfigAPICallImpl) then) =
      __$$ActionConfigAPICallImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
      APIActionTypeConfig config});

  @override
  $APIActionTypeConfigCopyWith<$Res> get config;
}

/// @nodoc
class __$$ActionConfigAPICallImplCopyWithImpl<$Res>
    extends _$ActionConfigCopyWithImpl<$Res, _$ActionConfigAPICallImpl>
    implements _$$ActionConfigAPICallImplCopyWith<$Res> {
  __$$ActionConfigAPICallImplCopyWithImpl(_$ActionConfigAPICallImpl _value,
      $Res Function(_$ActionConfigAPICallImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? config = null,
  }) {
    return _then(_$ActionConfigAPICallImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as ActionEvent,
      config: null == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as APIActionTypeConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionConfigAPICallImpl implements ActionConfigAPICall {
  const _$ActionConfigAPICallImpl(
      {@JsonKey(unknownEnumValue: ActionEvent.onApply)
      this.event = ActionEvent.onApply,
      required this.config});

  factory _$ActionConfigAPICallImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionConfigAPICallImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: ActionEvent.onApply)
  final ActionEvent event;
  @override
  final APIActionTypeConfig config;

  @override
  String toString() {
    return 'ActionConfig.ApiCall(event: $event, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionConfigAPICallImpl &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.config, config) || other.config == config));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, event, config);

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionConfigAPICallImplCopyWith<_$ActionConfigAPICallImpl> get copyWith =>
      __$$ActionConfigAPICallImplCopyWithImpl<_$ActionConfigAPICallImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)
        ApiCall,
  }) {
    return ApiCall(event, config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)?
        ApiCall,
  }) {
    return ApiCall?.call(event, config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(unknownEnumValue: ActionEvent.onApply) ActionEvent event,
            APIActionTypeConfig config)?
        ApiCall,
    required TResult orElse(),
  }) {
    if (ApiCall != null) {
      return ApiCall(event, config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ActionConfigAPICall value) ApiCall,
  }) {
    return ApiCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ActionConfigAPICall value)? ApiCall,
  }) {
    return ApiCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ActionConfigAPICall value)? ApiCall,
    required TResult orElse(),
  }) {
    if (ApiCall != null) {
      return ApiCall(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionConfigAPICallImplToJson(
      this,
    );
  }
}

abstract class ActionConfigAPICall implements ActionConfig {
  const factory ActionConfigAPICall(
      {@JsonKey(unknownEnumValue: ActionEvent.onApply) final ActionEvent event,
      required final APIActionTypeConfig config}) = _$ActionConfigAPICallImpl;

  factory ActionConfigAPICall.fromJson(Map<String, dynamic> json) =
      _$ActionConfigAPICallImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: ActionEvent.onApply)
  ActionEvent get event;
  @override
  APIActionTypeConfig get config;

  /// Create a copy of ActionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionConfigAPICallImplCopyWith<_$ActionConfigAPICallImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

APIActionTypeConfig _$APIActionTypeConfigFromJson(Map<String, dynamic> json) {
  switch (json['method']) {
    case 'POST':
      return _APIActionTypeConfigPost.fromJson(json);
    case 'GET':
      return _APIActionTypeConfigGet.fromJson(json);
    case 'PUT':
      return _APIActionTypeConfigPut.fromJson(json);
    case 'DELETE':
      return _APIActionTypeConfigDelete.fromJson(json);
    case 'PATCH':
      return _APIActionTypeConfigPatch.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'method', 'APIActionTypeConfig',
          'Invalid union type "${json['method']}"!');
  }
}

/// @nodoc
mixin _$APIActionTypeConfig {
  String get url => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: ContentType.JSON)
  ContentType get contentType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get extraBodyParams =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this APIActionTypeConfig to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $APIActionTypeConfigCopyWith<APIActionTypeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $APIActionTypeConfigCopyWith<$Res> {
  factory $APIActionTypeConfigCopyWith(
          APIActionTypeConfig value, $Res Function(APIActionTypeConfig) then) =
      _$APIActionTypeConfigCopyWithImpl<$Res, APIActionTypeConfig>;
  @useResult
  $Res call(
      {String url,
      @JsonKey(unknownEnumValue: ContentType.JSON) ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class _$APIActionTypeConfigCopyWithImpl<$Res, $Val extends APIActionTypeConfig>
    implements $APIActionTypeConfigCopyWith<$Res> {
  _$APIActionTypeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value.extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$APIActionTypeConfigPostImplCopyWith<$Res>
    implements $APIActionTypeConfigCopyWith<$Res> {
  factory _$$APIActionTypeConfigPostImplCopyWith(
          _$APIActionTypeConfigPostImpl value,
          $Res Function(_$APIActionTypeConfigPostImpl) then) =
      __$$APIActionTypeConfigPostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      @JsonKey(unknownEnumValue: ContentType.JSON) ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class __$$APIActionTypeConfigPostImplCopyWithImpl<$Res>
    extends _$APIActionTypeConfigCopyWithImpl<$Res,
        _$APIActionTypeConfigPostImpl>
    implements _$$APIActionTypeConfigPostImplCopyWith<$Res> {
  __$$APIActionTypeConfigPostImplCopyWithImpl(
      _$APIActionTypeConfigPostImpl _value,
      $Res Function(_$APIActionTypeConfigPostImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_$APIActionTypeConfigPostImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value._extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIActionTypeConfigPostImpl implements _APIActionTypeConfigPost {
  const _$APIActionTypeConfigPostImpl(
      {required this.url,
      @JsonKey(unknownEnumValue: ContentType.JSON)
      this.contentType = ContentType.JSON,
      final Map<String, dynamic>? extraBodyParams,
      final String? $type})
      : _extraBodyParams = extraBodyParams,
        $type = $type ?? 'POST';

  factory _$APIActionTypeConfigPostImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIActionTypeConfigPostImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey(unknownEnumValue: ContentType.JSON)
  final ContentType contentType;
  final Map<String, dynamic>? _extraBodyParams;
  @override
  Map<String, dynamic>? get extraBodyParams {
    final value = _extraBodyParams;
    if (value == null) return null;
    if (_extraBodyParams is EqualUnmodifiableMapView) return _extraBodyParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'APIActionTypeConfig.post(url: $url, contentType: $contentType, extraBodyParams: $extraBodyParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIActionTypeConfigPostImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._extraBodyParams, _extraBodyParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, contentType,
      const DeepCollectionEquality().hash(_extraBodyParams));

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIActionTypeConfigPostImplCopyWith<_$APIActionTypeConfigPostImpl>
      get copyWith => __$$APIActionTypeConfigPostImplCopyWithImpl<
          _$APIActionTypeConfigPostImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) {
    return post(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) {
    return post?.call(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(url, contentType, extraBodyParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) {
    return post(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) {
    return post?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) {
    if (post != null) {
      return post(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$APIActionTypeConfigPostImplToJson(
      this,
    );
  }
}

abstract class _APIActionTypeConfigPost implements APIActionTypeConfig {
  const factory _APIActionTypeConfigPost(
          {required final String url,
          @JsonKey(unknownEnumValue: ContentType.JSON)
          final ContentType contentType,
          final Map<String, dynamic>? extraBodyParams}) =
      _$APIActionTypeConfigPostImpl;

  factory _APIActionTypeConfigPost.fromJson(Map<String, dynamic> json) =
      _$APIActionTypeConfigPostImpl.fromJson;

  @override
  String get url;
  @override
  @JsonKey(unknownEnumValue: ContentType.JSON)
  ContentType get contentType;
  @override
  Map<String, dynamic>? get extraBodyParams;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIActionTypeConfigPostImplCopyWith<_$APIActionTypeConfigPostImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$APIActionTypeConfigGetImplCopyWith<$Res>
    implements $APIActionTypeConfigCopyWith<$Res> {
  factory _$$APIActionTypeConfigGetImplCopyWith(
          _$APIActionTypeConfigGetImpl value,
          $Res Function(_$APIActionTypeConfigGetImpl) then) =
      __$$APIActionTypeConfigGetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class __$$APIActionTypeConfigGetImplCopyWithImpl<$Res>
    extends _$APIActionTypeConfigCopyWithImpl<$Res,
        _$APIActionTypeConfigGetImpl>
    implements _$$APIActionTypeConfigGetImplCopyWith<$Res> {
  __$$APIActionTypeConfigGetImplCopyWithImpl(
      _$APIActionTypeConfigGetImpl _value,
      $Res Function(_$APIActionTypeConfigGetImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_$APIActionTypeConfigGetImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value._extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIActionTypeConfigGetImpl implements _APIActionTypeConfigGet {
  const _$APIActionTypeConfigGetImpl(
      {required this.url,
      this.contentType = ContentType.JSON,
      final Map<String, dynamic>? extraBodyParams,
      final String? $type})
      : _extraBodyParams = extraBodyParams,
        $type = $type ?? 'GET';

  factory _$APIActionTypeConfigGetImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIActionTypeConfigGetImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final ContentType contentType;
  final Map<String, dynamic>? _extraBodyParams;
  @override
  Map<String, dynamic>? get extraBodyParams {
    final value = _extraBodyParams;
    if (value == null) return null;
    if (_extraBodyParams is EqualUnmodifiableMapView) return _extraBodyParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'APIActionTypeConfig.get(url: $url, contentType: $contentType, extraBodyParams: $extraBodyParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIActionTypeConfigGetImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._extraBodyParams, _extraBodyParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, contentType,
      const DeepCollectionEquality().hash(_extraBodyParams));

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIActionTypeConfigGetImplCopyWith<_$APIActionTypeConfigGetImpl>
      get copyWith => __$$APIActionTypeConfigGetImplCopyWithImpl<
          _$APIActionTypeConfigGetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) {
    return get(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) {
    return get?.call(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(url, contentType, extraBodyParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$APIActionTypeConfigGetImplToJson(
      this,
    );
  }
}

abstract class _APIActionTypeConfigGet implements APIActionTypeConfig {
  const factory _APIActionTypeConfigGet(
          {required final String url,
          final ContentType contentType,
          final Map<String, dynamic>? extraBodyParams}) =
      _$APIActionTypeConfigGetImpl;

  factory _APIActionTypeConfigGet.fromJson(Map<String, dynamic> json) =
      _$APIActionTypeConfigGetImpl.fromJson;

  @override
  String get url;
  @override
  ContentType get contentType;
  @override
  Map<String, dynamic>? get extraBodyParams;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIActionTypeConfigGetImplCopyWith<_$APIActionTypeConfigGetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$APIActionTypeConfigPutImplCopyWith<$Res>
    implements $APIActionTypeConfigCopyWith<$Res> {
  factory _$$APIActionTypeConfigPutImplCopyWith(
          _$APIActionTypeConfigPutImpl value,
          $Res Function(_$APIActionTypeConfigPutImpl) then) =
      __$$APIActionTypeConfigPutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class __$$APIActionTypeConfigPutImplCopyWithImpl<$Res>
    extends _$APIActionTypeConfigCopyWithImpl<$Res,
        _$APIActionTypeConfigPutImpl>
    implements _$$APIActionTypeConfigPutImplCopyWith<$Res> {
  __$$APIActionTypeConfigPutImplCopyWithImpl(
      _$APIActionTypeConfigPutImpl _value,
      $Res Function(_$APIActionTypeConfigPutImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_$APIActionTypeConfigPutImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value._extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIActionTypeConfigPutImpl implements _APIActionTypeConfigPut {
  const _$APIActionTypeConfigPutImpl(
      {required this.url,
      this.contentType = ContentType.JSON,
      final Map<String, dynamic>? extraBodyParams,
      final String? $type})
      : _extraBodyParams = extraBodyParams,
        $type = $type ?? 'PUT';

  factory _$APIActionTypeConfigPutImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIActionTypeConfigPutImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final ContentType contentType;
  final Map<String, dynamic>? _extraBodyParams;
  @override
  Map<String, dynamic>? get extraBodyParams {
    final value = _extraBodyParams;
    if (value == null) return null;
    if (_extraBodyParams is EqualUnmodifiableMapView) return _extraBodyParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'APIActionTypeConfig.put(url: $url, contentType: $contentType, extraBodyParams: $extraBodyParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIActionTypeConfigPutImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._extraBodyParams, _extraBodyParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, contentType,
      const DeepCollectionEquality().hash(_extraBodyParams));

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIActionTypeConfigPutImplCopyWith<_$APIActionTypeConfigPutImpl>
      get copyWith => __$$APIActionTypeConfigPutImplCopyWithImpl<
          _$APIActionTypeConfigPutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) {
    return put(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) {
    return put?.call(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(url, contentType, extraBodyParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) {
    return put(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) {
    return put?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) {
    if (put != null) {
      return put(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$APIActionTypeConfigPutImplToJson(
      this,
    );
  }
}

abstract class _APIActionTypeConfigPut implements APIActionTypeConfig {
  const factory _APIActionTypeConfigPut(
          {required final String url,
          final ContentType contentType,
          final Map<String, dynamic>? extraBodyParams}) =
      _$APIActionTypeConfigPutImpl;

  factory _APIActionTypeConfigPut.fromJson(Map<String, dynamic> json) =
      _$APIActionTypeConfigPutImpl.fromJson;

  @override
  String get url;
  @override
  ContentType get contentType;
  @override
  Map<String, dynamic>? get extraBodyParams;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIActionTypeConfigPutImplCopyWith<_$APIActionTypeConfigPutImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$APIActionTypeConfigDeleteImplCopyWith<$Res>
    implements $APIActionTypeConfigCopyWith<$Res> {
  factory _$$APIActionTypeConfigDeleteImplCopyWith(
          _$APIActionTypeConfigDeleteImpl value,
          $Res Function(_$APIActionTypeConfigDeleteImpl) then) =
      __$$APIActionTypeConfigDeleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class __$$APIActionTypeConfigDeleteImplCopyWithImpl<$Res>
    extends _$APIActionTypeConfigCopyWithImpl<$Res,
        _$APIActionTypeConfigDeleteImpl>
    implements _$$APIActionTypeConfigDeleteImplCopyWith<$Res> {
  __$$APIActionTypeConfigDeleteImplCopyWithImpl(
      _$APIActionTypeConfigDeleteImpl _value,
      $Res Function(_$APIActionTypeConfigDeleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_$APIActionTypeConfigDeleteImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value._extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIActionTypeConfigDeleteImpl implements _APIActionTypeConfigDelete {
  const _$APIActionTypeConfigDeleteImpl(
      {required this.url,
      this.contentType = ContentType.JSON,
      final Map<String, dynamic>? extraBodyParams,
      final String? $type})
      : _extraBodyParams = extraBodyParams,
        $type = $type ?? 'DELETE';

  factory _$APIActionTypeConfigDeleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIActionTypeConfigDeleteImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final ContentType contentType;
  final Map<String, dynamic>? _extraBodyParams;
  @override
  Map<String, dynamic>? get extraBodyParams {
    final value = _extraBodyParams;
    if (value == null) return null;
    if (_extraBodyParams is EqualUnmodifiableMapView) return _extraBodyParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'APIActionTypeConfig.delete(url: $url, contentType: $contentType, extraBodyParams: $extraBodyParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIActionTypeConfigDeleteImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._extraBodyParams, _extraBodyParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, contentType,
      const DeepCollectionEquality().hash(_extraBodyParams));

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIActionTypeConfigDeleteImplCopyWith<_$APIActionTypeConfigDeleteImpl>
      get copyWith => __$$APIActionTypeConfigDeleteImplCopyWithImpl<
          _$APIActionTypeConfigDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) {
    return delete(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) {
    return delete?.call(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(url, contentType, extraBodyParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$APIActionTypeConfigDeleteImplToJson(
      this,
    );
  }
}

abstract class _APIActionTypeConfigDelete implements APIActionTypeConfig {
  const factory _APIActionTypeConfigDelete(
          {required final String url,
          final ContentType contentType,
          final Map<String, dynamic>? extraBodyParams}) =
      _$APIActionTypeConfigDeleteImpl;

  factory _APIActionTypeConfigDelete.fromJson(Map<String, dynamic> json) =
      _$APIActionTypeConfigDeleteImpl.fromJson;

  @override
  String get url;
  @override
  ContentType get contentType;
  @override
  Map<String, dynamic>? get extraBodyParams;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIActionTypeConfigDeleteImplCopyWith<_$APIActionTypeConfigDeleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$APIActionTypeConfigPatchImplCopyWith<$Res>
    implements $APIActionTypeConfigCopyWith<$Res> {
  factory _$$APIActionTypeConfigPatchImplCopyWith(
          _$APIActionTypeConfigPatchImpl value,
          $Res Function(_$APIActionTypeConfigPatchImpl) then) =
      __$$APIActionTypeConfigPatchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      ContentType contentType,
      Map<String, dynamic>? extraBodyParams});
}

/// @nodoc
class __$$APIActionTypeConfigPatchImplCopyWithImpl<$Res>
    extends _$APIActionTypeConfigCopyWithImpl<$Res,
        _$APIActionTypeConfigPatchImpl>
    implements _$$APIActionTypeConfigPatchImplCopyWith<$Res> {
  __$$APIActionTypeConfigPatchImplCopyWithImpl(
      _$APIActionTypeConfigPatchImpl _value,
      $Res Function(_$APIActionTypeConfigPatchImpl) _then)
      : super(_value, _then);

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? contentType = null,
    Object? extraBodyParams = freezed,
  }) {
    return _then(_$APIActionTypeConfigPatchImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      extraBodyParams: freezed == extraBodyParams
          ? _value._extraBodyParams
          : extraBodyParams // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$APIActionTypeConfigPatchImpl implements _APIActionTypeConfigPatch {
  const _$APIActionTypeConfigPatchImpl(
      {required this.url,
      this.contentType = ContentType.JSON,
      final Map<String, dynamic>? extraBodyParams,
      final String? $type})
      : _extraBodyParams = extraBodyParams,
        $type = $type ?? 'PATCH';

  factory _$APIActionTypeConfigPatchImpl.fromJson(Map<String, dynamic> json) =>
      _$$APIActionTypeConfigPatchImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final ContentType contentType;
  final Map<String, dynamic>? _extraBodyParams;
  @override
  Map<String, dynamic>? get extraBodyParams {
    final value = _extraBodyParams;
    if (value == null) return null;
    if (_extraBodyParams is EqualUnmodifiableMapView) return _extraBodyParams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'method')
  final String $type;

  @override
  String toString() {
    return 'APIActionTypeConfig.patch(url: $url, contentType: $contentType, extraBodyParams: $extraBodyParams)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$APIActionTypeConfigPatchImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            const DeepCollectionEquality()
                .equals(other._extraBodyParams, _extraBodyParams));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, contentType,
      const DeepCollectionEquality().hash(_extraBodyParams));

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$APIActionTypeConfigPatchImplCopyWith<_$APIActionTypeConfigPatchImpl>
      get copyWith => __$$APIActionTypeConfigPatchImplCopyWithImpl<
          _$APIActionTypeConfigPatchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        post,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        get,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        put,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        delete,
    required TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)
        patch,
  }) {
    return patch(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult? Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
  }) {
    return patch?.call(url, contentType, extraBodyParams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String url,
            @JsonKey(unknownEnumValue: ContentType.JSON)
            ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        post,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        get,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        put,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        delete,
    TResult Function(String url, ContentType contentType,
            Map<String, dynamic>? extraBodyParams)?
        patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(url, contentType, extraBodyParams);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_APIActionTypeConfigPost value) post,
    required TResult Function(_APIActionTypeConfigGet value) get,
    required TResult Function(_APIActionTypeConfigPut value) put,
    required TResult Function(_APIActionTypeConfigDelete value) delete,
    required TResult Function(_APIActionTypeConfigPatch value) patch,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_APIActionTypeConfigPost value)? post,
    TResult? Function(_APIActionTypeConfigGet value)? get,
    TResult? Function(_APIActionTypeConfigPut value)? put,
    TResult? Function(_APIActionTypeConfigDelete value)? delete,
    TResult? Function(_APIActionTypeConfigPatch value)? patch,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_APIActionTypeConfigPost value)? post,
    TResult Function(_APIActionTypeConfigGet value)? get,
    TResult Function(_APIActionTypeConfigPut value)? put,
    TResult Function(_APIActionTypeConfigDelete value)? delete,
    TResult Function(_APIActionTypeConfigPatch value)? patch,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$APIActionTypeConfigPatchImplToJson(
      this,
    );
  }
}

abstract class _APIActionTypeConfigPatch implements APIActionTypeConfig {
  const factory _APIActionTypeConfigPatch(
          {required final String url,
          final ContentType contentType,
          final Map<String, dynamic>? extraBodyParams}) =
      _$APIActionTypeConfigPatchImpl;

  factory _APIActionTypeConfigPatch.fromJson(Map<String, dynamic> json) =
      _$APIActionTypeConfigPatchImpl.fromJson;

  @override
  String get url;
  @override
  ContentType get contentType;
  @override
  Map<String, dynamic>? get extraBodyParams;

  /// Create a copy of APIActionTypeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$APIActionTypeConfigPatchImplCopyWith<_$APIActionTypeConfigPatchImpl>
      get copyWith => throw _privateConstructorUsedError;
}
