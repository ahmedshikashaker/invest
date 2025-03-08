// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProgressImpl _$$ProgressImplFromJson(Map<String, dynamic> json) =>
    _$ProgressImpl(
      percentage: (json['percentage'] as num).toInt(),
      label: json['label'] as String,
    );

Map<String, dynamic> _$$ProgressImplToJson(_$ProgressImpl instance) =>
    <String, dynamic>{
      'percentage': instance.percentage,
      'label': instance.label,
    };
