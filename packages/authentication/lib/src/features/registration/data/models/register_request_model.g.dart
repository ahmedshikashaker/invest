// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(
        Map<String, dynamic> json) =>
    RegisterRequestModel(
      civilId: json['civilId'] as String,
      password: json['password'] as String,
      actionToken: json['actionToken'] as String,
    );

Map<String, dynamic> _$RegisterRequestModelToJson(
        RegisterRequestModel instance) =>
    <String, dynamic>{
      'civilId': instance.civilId,
      'password': instance.password,
      'actionToken': instance.actionToken,
    };
