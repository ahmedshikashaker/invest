import 'package:json_annotation/json_annotation.dart';

import 'otp_services_types_enum.dart';

part 'otp_request_model.g.dart';

@JsonSerializable(createFactory: false)
class OTPRequestModel {
  final String? scope;
  @JsonKey(includeToJson: false)
  final OtpPrefixServiceType? serviceType;

  const OTPRequestModel({this.serviceType, required this.scope});

  Map<String, dynamic> toJson() => _$OTPRequestModelToJson(this);
}
