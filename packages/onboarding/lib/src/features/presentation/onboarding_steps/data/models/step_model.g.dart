// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StepModel _$StepModelFromJson(Map<String, dynamic> json) => StepModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      progress: json['progress'] as num?,
      isCompleted: json['isCompleted'] as bool?,
      navigation: json['navigation'] == null
          ? null
          : NavigationModel.fromJson(
              json['navigation'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : IconModelId.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StepModelToJson(StepModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'progress': instance.progress,
      'isCompleted': instance.isCompleted,
      'navigation': instance.navigation,
      'icon': instance.icon,
    };

NavigationModel _$NavigationModelFromJson(Map<String, dynamic> json) =>
    NavigationModel(
      previous: json['previous'] as String?,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$NavigationModelToJson(NavigationModel instance) =>
    <String, dynamic>{
      'previous': instance.previous,
      'next': instance.next,
    };
