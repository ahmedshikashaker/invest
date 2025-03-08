import 'package:json_annotation/json_annotation.dart';

part 'forget_password_verify_request.g.dart';

@JsonSerializable(createFactory: false)
class ForgetPasswordVerifyRequest {
  final String? actionToken;
  final String? otp;

  ForgetPasswordVerifyRequest({
    this.actionToken,
    this.otp,
  });

  Map<String, dynamic> toJson() => _$ForgetPasswordVerifyRequestToJson(this);
}
