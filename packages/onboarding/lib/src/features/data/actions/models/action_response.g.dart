// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionResponseImpl _$$ActionResponseImplFromJson(Map<String, dynamic> json) =>
    _$ActionResponseImpl(
      data: ActionResponseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActionResponseImplToJson(
        _$ActionResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UpdateFieldsValuesDataImpl _$$UpdateFieldsValuesDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateFieldsValuesDataImpl(
      payload: (json['payload'] as List<dynamic>)
          .map((e) => FieldUpdate.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$UpdateFieldsValuesDataImplToJson(
        _$UpdateFieldsValuesDataImpl instance) =>
    <String, dynamic>{
      'payload': instance.payload,
      'type': instance.$type,
    };

_$RedirectDataImpl _$$RedirectDataImplFromJson(Map<String, dynamic> json) =>
    _$RedirectDataImpl(
      url: json['url'] as String,
      external: json['external'] as bool? ?? false,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RedirectDataImplToJson(_$RedirectDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'external': instance.external,
      'type': instance.$type,
    };

_$ShowMessageDataImpl _$$ShowMessageDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ShowMessageDataImpl(
      message: json['message'] as String,
      type: json['type'] as String? ?? 'info',
    );

Map<String, dynamic> _$$ShowMessageDataImplToJson(
        _$ShowMessageDataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
    };

_$TriggerActionDataImpl _$$TriggerActionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TriggerActionDataImpl(
      actionId: json['actionId'] as String,
      params: json['params'] as Map<String, dynamic>?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TriggerActionDataImplToJson(
        _$TriggerActionDataImpl instance) =>
    <String, dynamic>{
      'actionId': instance.actionId,
      'params': instance.params,
      'type': instance.$type,
    };

_$FieldUpdateImpl _$$FieldUpdateImplFromJson(Map<String, dynamic> json) =>
    _$FieldUpdateImpl(
      id: json['id'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$$FieldUpdateImplToJson(_$FieldUpdateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
