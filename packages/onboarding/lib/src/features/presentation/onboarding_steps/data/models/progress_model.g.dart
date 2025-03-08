// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProgressModel _$ProgressModelFromJson(Map<String, dynamic> json) =>
    ProgressModel(
      currentStepId: json['currentStepId'] as String?,
      currentSectionId: json['currentSectionId'] as String?,
    );

Map<String, dynamic> _$ProgressModelToJson(ProgressModel instance) =>
    <String, dynamic>{
      'currentStepId': instance.currentStepId,
      'currentSectionId': instance.currentSectionId,
    };
