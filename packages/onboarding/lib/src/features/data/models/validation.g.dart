// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegexValidationImpl _$$RegexValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$RegexValidationImpl(
      value: json['value'] as String,
      errorMessage: json['errorMessage'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RegexValidationImplToJson(
        _$RegexValidationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'errorMessage': instance.errorMessage,
      'type': instance.$type,
    };

_$MinLengthValidationImpl _$$MinLengthValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$MinLengthValidationImpl(
      value: (json['value'] as num).toInt(),
      errorMessage: json['errorMessage'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MinLengthValidationImplToJson(
        _$MinLengthValidationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'errorMessage': instance.errorMessage,
      'type': instance.$type,
    };

_$MimeTypeValidationImpl _$$MimeTypeValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$MimeTypeValidationImpl(
      value: (json['value'] as List<dynamic>).map((e) => e as String).toList(),
      errorMessage: json['errorMessage'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MimeTypeValidationImplToJson(
        _$MimeTypeValidationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'errorMessage': instance.errorMessage,
      'type': instance.$type,
    };

_$MaxSizeValidationImpl _$$MaxSizeValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$MaxSizeValidationImpl(
      value: (json['value'] as num).toInt(),
      errorMessage: json['errorMessage'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MaxSizeValidationImplToJson(
        _$MaxSizeValidationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'errorMessage': instance.errorMessage,
      'type': instance.$type,
    };

_$RequiredValidationImpl _$$RequiredValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$RequiredValidationImpl(
      value: json['value'] as bool,
      errorMessage: json['errorMessage'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$RequiredValidationImplToJson(
        _$RequiredValidationImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'errorMessage': instance.errorMessage,
      'type': instance.$type,
    };
