// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lookup_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LookupItemImpl _$$LookupItemImplFromJson(Map<String, dynamic> json) =>
    _$LookupItemImpl(
      value: json['value'] as String,
      label: json['label'] as String,
      description: json['description'] as String?,
      fields: (json['fields'] as List<dynamic>?)
              ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$LookupItemImplToJson(_$LookupItemImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'description': instance.description,
      'fields': instance.fields,
    };
