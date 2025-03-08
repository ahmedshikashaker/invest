// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_verify_mobile_number_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestVerifyMobileNumberRequestModel
    _$RequestVerifyMobileNumberRequestModelFromJson(
            Map<String, dynamic> json) =>
        RequestVerifyMobileNumberRequestModel(
          mobileNumber: json['mobileNumber'] as String?,
          actionToken: json['actionToken'] as String?,
        );

Map<String, dynamic> _$RequestVerifyMobileNumberRequestModelToJson(
        RequestVerifyMobileNumberRequestModel instance) =>
    <String, dynamic>{
      'mobileNumber': instance.mobileNumber,
      'actionToken': instance.actionToken,
    };
