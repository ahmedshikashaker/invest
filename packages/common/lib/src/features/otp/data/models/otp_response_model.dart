import 'package:json_annotation/json_annotation.dart';
import 'package:kib_core/kib_core.dart';

part 'otp_response_model.g.dart';

@JsonSerializable(createToJson: false)
class OtpResponseModel {
  final String? mobileNumber;

  const OtpResponseModel({required this.mobileNumber});

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseModelFromJson(json);

  PhoneNumberModel? get phoneNumber => PhoneNumberModel.kw(mobileNumber ?? '');
}
