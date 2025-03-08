import 'package:json_annotation/json_annotation.dart';

part 'forget_password_init_request.g.dart';

@JsonSerializable(createFactory: false)
class ForgetPasswordInitRequest {
  final String? mobileNumber;
  final String? civilId;

  ForgetPasswordInitRequest({
    this.mobileNumber,
    this.civilId,
  });

  Map<String, dynamic> toJson() => _$ForgetPasswordInitRequestToJson(this);
}
