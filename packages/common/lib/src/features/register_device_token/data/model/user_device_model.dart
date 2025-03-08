import 'package:common_dependencies/common_dependencies.dart';

part 'user_device_model.g.dart';

@JsonSerializable()
class UserDeviceTokenRequestModel {
  String fcmToken;
  String platform;
  String deviceId;
  String appVersion;
  IdentityType identityType;
  String service;

  UserDeviceTokenRequestModel({
    required this.fcmToken,
    required this.platform,
    required this.deviceId,
    required this.appVersion,
    required this.identityType,
    required this.service,
  });

  factory UserDeviceTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$UserDeviceTokenRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserDeviceTokenRequestModelToJson(this);
}

enum IdentityType {
  @JsonValue("UUID")
  uuid,
}
