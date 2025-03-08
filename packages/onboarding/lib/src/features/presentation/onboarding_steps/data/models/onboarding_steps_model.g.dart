// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_steps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StepSummaryModel _$StepSummaryModelFromJson(Map<String, dynamic> json) =>
    StepSummaryModel(
      id: json['id'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: json['progress'] == null
          ? null
          : ProgressModel.fromJson(json['progress'] as Map<String, dynamic>),
      actionButtonTitle: json['actionButtonTitle'] as String?,
    );

Map<String, dynamic> _$StepSummaryModelToJson(StepSummaryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'steps': instance.steps,
      'progress': instance.progress,
      'actionButtonTitle': instance.actionButtonTitle,
    };
