// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_reset_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgetPasswordResetResponseModel _$ForgetPasswordResetResponseModelFromJson(
        Map<String, dynamic> json) =>
    ForgetPasswordResetResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ForgetPasswordResetResponseModelToJson(
        ForgetPasswordResetResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };
