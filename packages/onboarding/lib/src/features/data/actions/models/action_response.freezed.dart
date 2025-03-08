// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActionResponse _$ActionResponseFromJson(Map<String, dynamic> json) {
  return _ActionResponse.fromJson(json);
}

/// @nodoc
mixin _$ActionResponse {
  ActionResponseData get data => throw _privateConstructorUsedError;

  /// Serializes this ActionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActionResponseCopyWith<ActionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionResponseCopyWith<$Res> {
  factory $ActionResponseCopyWith(
          ActionResponse value, $Res Function(ActionResponse) then) =
      _$ActionResponseCopyWithImpl<$Res, ActionResponse>;
  @useResult
  $Res call({ActionResponseData data});

  $ActionResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ActionResponseCopyWithImpl<$Res, $Val extends ActionResponse>
    implements $ActionResponseCopyWith<$Res> {
  _$ActionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ActionResponseData,
    ) as $Val);
  }

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActionResponseDataCopyWith<$Res> get data {
    return $ActionResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActionResponseImplCopyWith<$Res>
    implements $ActionResponseCopyWith<$Res> {
  factory _$$ActionResponseImplCopyWith(_$ActionResponseImpl value,
          $Res Function(_$ActionResponseImpl) then) =
      __$$ActionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionResponseData data});

  @override
  $ActionResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ActionResponseImplCopyWithImpl<$Res>
    extends _$ActionResponseCopyWithImpl<$Res, _$ActionResponseImpl>
    implements _$$ActionResponseImplCopyWith<$Res> {
  __$$ActionResponseImplCopyWithImpl(
      _$ActionResponseImpl _value, $Res Function(_$ActionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ActionResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ActionResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionResponseImpl implements _ActionResponse {
  const _$ActionResponseImpl({required this.data});

  factory _$ActionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionResponseImplFromJson(json);

  @override
  final ActionResponseData data;

  @override
  String toString() {
    return 'ActionResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionResponseImplCopyWith<_$ActionResponseImpl> get copyWith =>
      __$$ActionResponseImplCopyWithImpl<_$ActionResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionResponseImplToJson(
      this,
    );
  }
}

abstract class _ActionResponse implements ActionResponse {
  const factory _ActionResponse({required final ActionResponseData data}) =
      _$ActionResponseImpl;

  factory _ActionResponse.fromJson(Map<String, dynamic> json) =
      _$ActionResponseImpl.fromJson;

  @override
  ActionResponseData get data;

  /// Create a copy of ActionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActionResponseImplCopyWith<_$ActionResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActionResponseData _$ActionResponseDataFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'UPDATE_FIELDS_VALUES':
      return UpdateFieldsValuesData.fromJson(json);
    case 'REDIRECT':
      return RedirectData.fromJson(json);
    case 'SHOW_MESSAGE':
      return ShowMessageData.fromJson(json);
    case 'TRIGGER_ACTION':
      return TriggerActionData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'ActionResponseData',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$ActionResponseData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldUpdate> payload) updateFieldsValues,
    required TResult Function(String url, bool external) redirect,
    required TResult Function(String message, String type) showMessage,
    required TResult Function(String actionId, Map<String, dynamic>? params)
        triggerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult? Function(String url, bool external)? redirect,
    TResult? Function(String message, String type)? showMessage,
    TResult? Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult Function(String url, bool external)? redirect,
    TResult Function(String message, String type)? showMessage,
    TResult Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFieldsValuesData value) updateFieldsValues,
    required TResult Function(RedirectData value) redirect,
    required TResult Function(ShowMessageData value) showMessage,
    required TResult Function(TriggerActionData value) triggerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult? Function(RedirectData value)? redirect,
    TResult? Function(ShowMessageData value)? showMessage,
    TResult? Function(TriggerActionData value)? triggerAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult Function(RedirectData value)? redirect,
    TResult Function(ShowMessageData value)? showMessage,
    TResult Function(TriggerActionData value)? triggerAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ActionResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionResponseDataCopyWith<$Res> {
  factory $ActionResponseDataCopyWith(
          ActionResponseData value, $Res Function(ActionResponseData) then) =
      _$ActionResponseDataCopyWithImpl<$Res, ActionResponseData>;
}

/// @nodoc
class _$ActionResponseDataCopyWithImpl<$Res, $Val extends ActionResponseData>
    implements $ActionResponseDataCopyWith<$Res> {
  _$ActionResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateFieldsValuesDataImplCopyWith<$Res> {
  factory _$$UpdateFieldsValuesDataImplCopyWith(
          _$UpdateFieldsValuesDataImpl value,
          $Res Function(_$UpdateFieldsValuesDataImpl) then) =
      __$$UpdateFieldsValuesDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldUpdate> payload});
}

/// @nodoc
class __$$UpdateFieldsValuesDataImplCopyWithImpl<$Res>
    extends _$ActionResponseDataCopyWithImpl<$Res, _$UpdateFieldsValuesDataImpl>
    implements _$$UpdateFieldsValuesDataImplCopyWith<$Res> {
  __$$UpdateFieldsValuesDataImplCopyWithImpl(
      _$UpdateFieldsValuesDataImpl _value,
      $Res Function(_$UpdateFieldsValuesDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payload = null,
  }) {
    return _then(_$UpdateFieldsValuesDataImpl(
      payload: null == payload
          ? _value._payload
          : payload // ignore: cast_nullable_to_non_nullable
              as List<FieldUpdate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFieldsValuesDataImpl implements UpdateFieldsValuesData {
  const _$UpdateFieldsValuesDataImpl(
      {required final List<FieldUpdate> payload, final String? $type})
      : _payload = payload,
        $type = $type ?? 'UPDATE_FIELDS_VALUES';

  factory _$UpdateFieldsValuesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateFieldsValuesDataImplFromJson(json);

  final List<FieldUpdate> _payload;
  @override
  List<FieldUpdate> get payload {
    if (_payload is EqualUnmodifiableListView) return _payload;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payload);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ActionResponseData.updateFieldsValues(payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFieldsValuesDataImpl &&
            const DeepCollectionEquality().equals(other._payload, _payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_payload));

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFieldsValuesDataImplCopyWith<_$UpdateFieldsValuesDataImpl>
      get copyWith => __$$UpdateFieldsValuesDataImplCopyWithImpl<
          _$UpdateFieldsValuesDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldUpdate> payload) updateFieldsValues,
    required TResult Function(String url, bool external) redirect,
    required TResult Function(String message, String type) showMessage,
    required TResult Function(String actionId, Map<String, dynamic>? params)
        triggerAction,
  }) {
    return updateFieldsValues(payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult? Function(String url, bool external)? redirect,
    TResult? Function(String message, String type)? showMessage,
    TResult? Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
  }) {
    return updateFieldsValues?.call(payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult Function(String url, bool external)? redirect,
    TResult Function(String message, String type)? showMessage,
    TResult Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
    required TResult orElse(),
  }) {
    if (updateFieldsValues != null) {
      return updateFieldsValues(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFieldsValuesData value) updateFieldsValues,
    required TResult Function(RedirectData value) redirect,
    required TResult Function(ShowMessageData value) showMessage,
    required TResult Function(TriggerActionData value) triggerAction,
  }) {
    return updateFieldsValues(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult? Function(RedirectData value)? redirect,
    TResult? Function(ShowMessageData value)? showMessage,
    TResult? Function(TriggerActionData value)? triggerAction,
  }) {
    return updateFieldsValues?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult Function(RedirectData value)? redirect,
    TResult Function(ShowMessageData value)? showMessage,
    TResult Function(TriggerActionData value)? triggerAction,
    required TResult orElse(),
  }) {
    if (updateFieldsValues != null) {
      return updateFieldsValues(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFieldsValuesDataImplToJson(
      this,
    );
  }
}

abstract class UpdateFieldsValuesData implements ActionResponseData {
  const factory UpdateFieldsValuesData(
          {required final List<FieldUpdate> payload}) =
      _$UpdateFieldsValuesDataImpl;

  factory UpdateFieldsValuesData.fromJson(Map<String, dynamic> json) =
      _$UpdateFieldsValuesDataImpl.fromJson;

  List<FieldUpdate> get payload;

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFieldsValuesDataImplCopyWith<_$UpdateFieldsValuesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RedirectDataImplCopyWith<$Res> {
  factory _$$RedirectDataImplCopyWith(
          _$RedirectDataImpl value, $Res Function(_$RedirectDataImpl) then) =
      __$$RedirectDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, bool external});
}

/// @nodoc
class __$$RedirectDataImplCopyWithImpl<$Res>
    extends _$ActionResponseDataCopyWithImpl<$Res, _$RedirectDataImpl>
    implements _$$RedirectDataImplCopyWith<$Res> {
  __$$RedirectDataImplCopyWithImpl(
      _$RedirectDataImpl _value, $Res Function(_$RedirectDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? external = null,
  }) {
    return _then(_$RedirectDataImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      external: null == external
          ? _value.external
          : external // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RedirectDataImpl implements RedirectData {
  const _$RedirectDataImpl(
      {required this.url, this.external = false, final String? $type})
      : $type = $type ?? 'REDIRECT';

  factory _$RedirectDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RedirectDataImplFromJson(json);

  @override
  final String url;
  @override
  @JsonKey()
  final bool external;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ActionResponseData.redirect(url: $url, external: $external)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RedirectDataImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.external, external) ||
                other.external == external));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, external);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RedirectDataImplCopyWith<_$RedirectDataImpl> get copyWith =>
      __$$RedirectDataImplCopyWithImpl<_$RedirectDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldUpdate> payload) updateFieldsValues,
    required TResult Function(String url, bool external) redirect,
    required TResult Function(String message, String type) showMessage,
    required TResult Function(String actionId, Map<String, dynamic>? params)
        triggerAction,
  }) {
    return redirect(url, external);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult? Function(String url, bool external)? redirect,
    TResult? Function(String message, String type)? showMessage,
    TResult? Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
  }) {
    return redirect?.call(url, external);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult Function(String url, bool external)? redirect,
    TResult Function(String message, String type)? showMessage,
    TResult Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(url, external);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFieldsValuesData value) updateFieldsValues,
    required TResult Function(RedirectData value) redirect,
    required TResult Function(ShowMessageData value) showMessage,
    required TResult Function(TriggerActionData value) triggerAction,
  }) {
    return redirect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult? Function(RedirectData value)? redirect,
    TResult? Function(ShowMessageData value)? showMessage,
    TResult? Function(TriggerActionData value)? triggerAction,
  }) {
    return redirect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult Function(RedirectData value)? redirect,
    TResult Function(ShowMessageData value)? showMessage,
    TResult Function(TriggerActionData value)? triggerAction,
    required TResult orElse(),
  }) {
    if (redirect != null) {
      return redirect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RedirectDataImplToJson(
      this,
    );
  }
}

abstract class RedirectData implements ActionResponseData {
  const factory RedirectData({required final String url, final bool external}) =
      _$RedirectDataImpl;

  factory RedirectData.fromJson(Map<String, dynamic> json) =
      _$RedirectDataImpl.fromJson;

  String get url;
  bool get external;

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RedirectDataImplCopyWith<_$RedirectDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowMessageDataImplCopyWith<$Res> {
  factory _$$ShowMessageDataImplCopyWith(_$ShowMessageDataImpl value,
          $Res Function(_$ShowMessageDataImpl) then) =
      __$$ShowMessageDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String type});
}

/// @nodoc
class __$$ShowMessageDataImplCopyWithImpl<$Res>
    extends _$ActionResponseDataCopyWithImpl<$Res, _$ShowMessageDataImpl>
    implements _$$ShowMessageDataImplCopyWith<$Res> {
  __$$ShowMessageDataImplCopyWithImpl(
      _$ShowMessageDataImpl _value, $Res Function(_$ShowMessageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? type = null,
  }) {
    return _then(_$ShowMessageDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowMessageDataImpl implements ShowMessageData {
  const _$ShowMessageDataImpl({required this.message, this.type = 'info'});

  factory _$ShowMessageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowMessageDataImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final String type;

  @override
  String toString() {
    return 'ActionResponseData.showMessage(message: $message, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowMessageDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, type);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowMessageDataImplCopyWith<_$ShowMessageDataImpl> get copyWith =>
      __$$ShowMessageDataImplCopyWithImpl<_$ShowMessageDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldUpdate> payload) updateFieldsValues,
    required TResult Function(String url, bool external) redirect,
    required TResult Function(String message, String type) showMessage,
    required TResult Function(String actionId, Map<String, dynamic>? params)
        triggerAction,
  }) {
    return showMessage(message, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult? Function(String url, bool external)? redirect,
    TResult? Function(String message, String type)? showMessage,
    TResult? Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
  }) {
    return showMessage?.call(message, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult Function(String url, bool external)? redirect,
    TResult Function(String message, String type)? showMessage,
    TResult Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(message, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFieldsValuesData value) updateFieldsValues,
    required TResult Function(RedirectData value) redirect,
    required TResult Function(ShowMessageData value) showMessage,
    required TResult Function(TriggerActionData value) triggerAction,
  }) {
    return showMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult? Function(RedirectData value)? redirect,
    TResult? Function(ShowMessageData value)? showMessage,
    TResult? Function(TriggerActionData value)? triggerAction,
  }) {
    return showMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult Function(RedirectData value)? redirect,
    TResult Function(ShowMessageData value)? showMessage,
    TResult Function(TriggerActionData value)? triggerAction,
    required TResult orElse(),
  }) {
    if (showMessage != null) {
      return showMessage(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowMessageDataImplToJson(
      this,
    );
  }
}

abstract class ShowMessageData implements ActionResponseData {
  const factory ShowMessageData(
      {required final String message,
      final String type}) = _$ShowMessageDataImpl;

  factory ShowMessageData.fromJson(Map<String, dynamic> json) =
      _$ShowMessageDataImpl.fromJson;

  String get message;
  String get type;

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowMessageDataImplCopyWith<_$ShowMessageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TriggerActionDataImplCopyWith<$Res> {
  factory _$$TriggerActionDataImplCopyWith(_$TriggerActionDataImpl value,
          $Res Function(_$TriggerActionDataImpl) then) =
      __$$TriggerActionDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String actionId, Map<String, dynamic>? params});
}

/// @nodoc
class __$$TriggerActionDataImplCopyWithImpl<$Res>
    extends _$ActionResponseDataCopyWithImpl<$Res, _$TriggerActionDataImpl>
    implements _$$TriggerActionDataImplCopyWith<$Res> {
  __$$TriggerActionDataImplCopyWithImpl(_$TriggerActionDataImpl _value,
      $Res Function(_$TriggerActionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionId = null,
    Object? params = freezed,
  }) {
    return _then(_$TriggerActionDataImpl(
      actionId: null == actionId
          ? _value.actionId
          : actionId // ignore: cast_nullable_to_non_nullable
              as String,
      params: freezed == params
          ? _value._params
          : params // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TriggerActionDataImpl implements TriggerActionData {
  const _$TriggerActionDataImpl(
      {required this.actionId,
      final Map<String, dynamic>? params,
      final String? $type})
      : _params = params,
        $type = $type ?? 'TRIGGER_ACTION';

  factory _$TriggerActionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TriggerActionDataImplFromJson(json);

  @override
  final String actionId;
  final Map<String, dynamic>? _params;
  @override
  Map<String, dynamic>? get params {
    final value = _params;
    if (value == null) return null;
    if (_params is EqualUnmodifiableMapView) return _params;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'ActionResponseData.triggerAction(actionId: $actionId, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TriggerActionDataImpl &&
            (identical(other.actionId, actionId) ||
                other.actionId == actionId) &&
            const DeepCollectionEquality().equals(other._params, _params));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, actionId, const DeepCollectionEquality().hash(_params));

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TriggerActionDataImplCopyWith<_$TriggerActionDataImpl> get copyWith =>
      __$$TriggerActionDataImplCopyWithImpl<_$TriggerActionDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldUpdate> payload) updateFieldsValues,
    required TResult Function(String url, bool external) redirect,
    required TResult Function(String message, String type) showMessage,
    required TResult Function(String actionId, Map<String, dynamic>? params)
        triggerAction,
  }) {
    return triggerAction(actionId, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult? Function(String url, bool external)? redirect,
    TResult? Function(String message, String type)? showMessage,
    TResult? Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
  }) {
    return triggerAction?.call(actionId, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldUpdate> payload)? updateFieldsValues,
    TResult Function(String url, bool external)? redirect,
    TResult Function(String message, String type)? showMessage,
    TResult Function(String actionId, Map<String, dynamic>? params)?
        triggerAction,
    required TResult orElse(),
  }) {
    if (triggerAction != null) {
      return triggerAction(actionId, params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateFieldsValuesData value) updateFieldsValues,
    required TResult Function(RedirectData value) redirect,
    required TResult Function(ShowMessageData value) showMessage,
    required TResult Function(TriggerActionData value) triggerAction,
  }) {
    return triggerAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult? Function(RedirectData value)? redirect,
    TResult? Function(ShowMessageData value)? showMessage,
    TResult? Function(TriggerActionData value)? triggerAction,
  }) {
    return triggerAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateFieldsValuesData value)? updateFieldsValues,
    TResult Function(RedirectData value)? redirect,
    TResult Function(ShowMessageData value)? showMessage,
    TResult Function(TriggerActionData value)? triggerAction,
    required TResult orElse(),
  }) {
    if (triggerAction != null) {
      return triggerAction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TriggerActionDataImplToJson(
      this,
    );
  }
}

abstract class TriggerActionData implements ActionResponseData {
  const factory TriggerActionData(
      {required final String actionId,
      final Map<String, dynamic>? params}) = _$TriggerActionDataImpl;

  factory TriggerActionData.fromJson(Map<String, dynamic> json) =
      _$TriggerActionDataImpl.fromJson;

  String get actionId;
  Map<String, dynamic>? get params;

  /// Create a copy of ActionResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TriggerActionDataImplCopyWith<_$TriggerActionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FieldUpdate _$FieldUpdateFromJson(Map<String, dynamic> json) {
  return _FieldUpdate.fromJson(json);
}

/// @nodoc
mixin _$FieldUpdate {
  String get id => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;

  /// Serializes this FieldUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FieldUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FieldUpdateCopyWith<FieldUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldUpdateCopyWith<$Res> {
  factory $FieldUpdateCopyWith(
          FieldUpdate value, $Res Function(FieldUpdate) then) =
      _$FieldUpdateCopyWithImpl<$Res, FieldUpdate>;
  @useResult
  $Res call({String id, dynamic value});
}

/// @nodoc
class _$FieldUpdateCopyWithImpl<$Res, $Val extends FieldUpdate>
    implements $FieldUpdateCopyWith<$Res> {
  _$FieldUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FieldUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldUpdateImplCopyWith<$Res>
    implements $FieldUpdateCopyWith<$Res> {
  factory _$$FieldUpdateImplCopyWith(
          _$FieldUpdateImpl value, $Res Function(_$FieldUpdateImpl) then) =
      __$$FieldUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, dynamic value});
}

/// @nodoc
class __$$FieldUpdateImplCopyWithImpl<$Res>
    extends _$FieldUpdateCopyWithImpl<$Res, _$FieldUpdateImpl>
    implements _$$FieldUpdateImplCopyWith<$Res> {
  __$$FieldUpdateImplCopyWithImpl(
      _$FieldUpdateImpl _value, $Res Function(_$FieldUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FieldUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
  }) {
    return _then(_$FieldUpdateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldUpdateImpl implements _FieldUpdate {
  const _$FieldUpdateImpl({required this.id, required this.value});

  factory _$FieldUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldUpdateImplFromJson(json);

  @override
  final String id;
  @override
  final dynamic value;

  @override
  String toString() {
    return 'FieldUpdate(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldUpdateImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, const DeepCollectionEquality().hash(value));

  /// Create a copy of FieldUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldUpdateImplCopyWith<_$FieldUpdateImpl> get copyWith =>
      __$$FieldUpdateImplCopyWithImpl<_$FieldUpdateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldUpdateImplToJson(
      this,
    );
  }
}

abstract class _FieldUpdate implements FieldUpdate {
  const factory _FieldUpdate(
      {required final String id,
      required final dynamic value}) = _$FieldUpdateImpl;

  factory _FieldUpdate.fromJson(Map<String, dynamic> json) =
      _$FieldUpdateImpl.fromJson;

  @override
  String get id;
  @override
  dynamic get value;

  /// Create a copy of FieldUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FieldUpdateImplCopyWith<_$FieldUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
