// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActionConfigAPICallImpl _$$ActionConfigAPICallImplFromJson(
        Map<String, dynamic> json) =>
    _$ActionConfigAPICallImpl(
      event: $enumDecodeNullable(_$ActionEventEnumMap, json['event'],
              unknownValue: ActionEvent.onApply) ??
          ActionEvent.onApply,
      config:
          APIActionTypeConfig.fromJson(json['config'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ActionConfigAPICallImplToJson(
        _$ActionConfigAPICallImpl instance) =>
    <String, dynamic>{
      'event': _$ActionEventEnumMap[instance.event]!,
      'config': instance.config,
    };

const _$ActionEventEnumMap = {
  ActionEvent.onApply: 'ON_APPLY',
  ActionEvent.onChange: 'ON_CHANGE',
};

_$APIActionTypeConfigPostImpl _$$APIActionTypeConfigPostImplFromJson(
        Map<String, dynamic> json) =>
    _$APIActionTypeConfigPostImpl(
      url: json['url'] as String,
      contentType: $enumDecodeNullable(
              _$ContentTypeEnumMap, json['contentType'],
              unknownValue: ContentType.JSON) ??
          ContentType.JSON,
      extraBodyParams: json['extraBodyParams'] as Map<String, dynamic>?,
      $type: json['method'] as String?,
    );

Map<String, dynamic> _$$APIActionTypeConfigPostImplToJson(
        _$APIActionTypeConfigPostImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'extraBodyParams': instance.extraBodyParams,
      'method': instance.$type,
    };

const _$ContentTypeEnumMap = {
  ContentType.JSON: 'application/json',
  ContentType.FORM_DATA: 'application/x-www-form-urlencoded',
  ContentType.MULTIPART_FORM_DATA: 'multipart/form-data',
};

_$APIActionTypeConfigGetImpl _$$APIActionTypeConfigGetImplFromJson(
        Map<String, dynamic> json) =>
    _$APIActionTypeConfigGetImpl(
      url: json['url'] as String,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']) ??
              ContentType.JSON,
      extraBodyParams: json['extraBodyParams'] as Map<String, dynamic>?,
      $type: json['method'] as String?,
    );

Map<String, dynamic> _$$APIActionTypeConfigGetImplToJson(
        _$APIActionTypeConfigGetImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'extraBodyParams': instance.extraBodyParams,
      'method': instance.$type,
    };

_$APIActionTypeConfigPutImpl _$$APIActionTypeConfigPutImplFromJson(
        Map<String, dynamic> json) =>
    _$APIActionTypeConfigPutImpl(
      url: json['url'] as String,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']) ??
              ContentType.JSON,
      extraBodyParams: json['extraBodyParams'] as Map<String, dynamic>?,
      $type: json['method'] as String?,
    );

Map<String, dynamic> _$$APIActionTypeConfigPutImplToJson(
        _$APIActionTypeConfigPutImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'extraBodyParams': instance.extraBodyParams,
      'method': instance.$type,
    };

_$APIActionTypeConfigDeleteImpl _$$APIActionTypeConfigDeleteImplFromJson(
        Map<String, dynamic> json) =>
    _$APIActionTypeConfigDeleteImpl(
      url: json['url'] as String,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']) ??
              ContentType.JSON,
      extraBodyParams: json['extraBodyParams'] as Map<String, dynamic>?,
      $type: json['method'] as String?,
    );

Map<String, dynamic> _$$APIActionTypeConfigDeleteImplToJson(
        _$APIActionTypeConfigDeleteImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'extraBodyParams': instance.extraBodyParams,
      'method': instance.$type,
    };

_$APIActionTypeConfigPatchImpl _$$APIActionTypeConfigPatchImplFromJson(
        Map<String, dynamic> json) =>
    _$APIActionTypeConfigPatchImpl(
      url: json['url'] as String,
      contentType:
          $enumDecodeNullable(_$ContentTypeEnumMap, json['contentType']) ??
              ContentType.JSON,
      extraBodyParams: json['extraBodyParams'] as Map<String, dynamic>?,
      $type: json['method'] as String?,
    );

Map<String, dynamic> _$$APIActionTypeConfigPatchImplToJson(
        _$APIActionTypeConfigPatchImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'contentType': _$ContentTypeEnumMap[instance.contentType]!,
      'extraBodyParams': instance.extraBodyParams,
      'method': instance.$type,
    };
