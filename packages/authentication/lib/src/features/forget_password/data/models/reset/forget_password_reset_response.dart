import 'package:json_annotation/json_annotation.dart';

part 'forget_password_reset_response.g.dart';

@JsonSerializable()
class ForgetPasswordResetResponseModel {
  final bool? success;
  final String? message;

  ForgetPasswordResetResponseModel({this.success, this.message});

  factory ForgetPasswordResetResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ForgetPasswordResetResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ForgetPasswordResetResponseModelToJson(this);
}
