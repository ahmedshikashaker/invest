// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyRequestModel _$VerifyRequestModelFromJson(Map<String, dynamic> json) =>
    VerifyRequestModel(
      otp: json['otp'] as String?,
      actionToken: json['actionToken'] as String?,
    );

Map<String, dynamic> _$VerifyRequestModelToJson(VerifyRequestModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'actionToken': instance.actionToken,
    };
