import 'package:json_annotation/json_annotation.dart';

part 'forget_password_reset_request.g.dart';

@JsonSerializable(createFactory: false)
class ForgetPasswordResetRequest {
  final String? actionToken;
  final String? newPassword;

  ForgetPasswordResetRequest({
    this.actionToken,
    this.newPassword,
  });

  Map<String, dynamic> toJson() => _$ForgetPasswordResetRequestToJson(this);
}
