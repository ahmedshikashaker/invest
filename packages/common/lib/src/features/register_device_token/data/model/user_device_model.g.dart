// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDeviceTokenRequestModel _$UserDeviceTokenRequestModelFromJson(
        Map<String, dynamic> json) =>
    UserDeviceTokenRequestModel(
      fcmToken: json['fcmToken'] as String,
      platform: json['platform'] as String,
      deviceId: json['deviceId'] as String,
      appVersion: json['appVersion'] as String,
      identityType: $enumDecode(_$IdentityTypeEnumMap, json['identityType']),
      service: json['service'] as String,
    );

Map<String, dynamic> _$UserDeviceTokenRequestModelToJson(
        UserDeviceTokenRequestModel instance) =>
    <String, dynamic>{
      'fcmToken': instance.fcmToken,
      'platform': instance.platform,
      'deviceId': instance.deviceId,
      'appVersion': instance.appVersion,
      'identityType': _$IdentityTypeEnumMap[instance.identityType]!,
      'service': instance.service,
    };

const _$IdentityTypeEnumMap = {
  IdentityType.uuid: 'UUID',
};
