// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StepImpl _$$StepImplFromJson(Map<String, dynamic> json) => _$StepImpl(
      id: json['id'] as String,
      stepLabel: json['stepLabel'] as String,
      title: json['title'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSectionId: json['currentSectionId'] as String?,
    );

Map<String, dynamic> _$$StepImplToJson(_$StepImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stepLabel': instance.stepLabel,
      'title': instance.title,
      'sections': instance.sections,
      'currentSectionId': instance.currentSectionId,
    };
