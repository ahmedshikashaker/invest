import 'package:json_annotation/json_annotation.dart';

part 'forget_password_verify_response.g.dart';

@JsonSerializable()
class ForgetPasswordVerifyResponseModel {
  final String? actionToken;

  ForgetPasswordVerifyResponseModel({this.actionToken});

  factory ForgetPasswordVerifyResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordVerifyResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordVerifyResponseModelToJson(this);
}
