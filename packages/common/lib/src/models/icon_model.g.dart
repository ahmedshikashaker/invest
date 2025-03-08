// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IconModelIdImpl _$$IconModelIdImplFromJson(Map<String, dynamic> json) =>
    _$IconModelIdImpl(
      id: json['id'] as String?,
      color: json['color'] == null
          ? null
          : ColorThemeModel.fromJson(json['color'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ColorThemeModel.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IconModelIdImplToJson(_$IconModelIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'runtimeType': instance.$type,
    };

_$IconModelBase64Impl _$$IconModelBase64ImplFromJson(
        Map<String, dynamic> json) =>
    _$IconModelBase64Impl(
      base64: json['base64'] as String?,
      color: json['color'] == null
          ? null
          : ColorThemeModel.fromJson(json['color'] as Map<String, dynamic>),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ColorThemeModel.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$IconModelBase64ImplToJson(
        _$IconModelBase64Impl instance) =>
    <String, dynamic>{
      'base64': instance.base64,
      'color': instance.color,
      'backgroundColor': instance.backgroundColor,
      'runtimeType': instance.$type,
    };
