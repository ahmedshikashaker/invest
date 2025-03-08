import 'package:json_annotation/json_annotation.dart';

part 'forget_password_init_response.g.dart';

@JsonSerializable()
class ForgetPasswordInitResponseModel {
  final String? actionToken;

  ForgetPasswordInitResponseModel({this.actionToken});

  factory ForgetPasswordInitResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ForgetPasswordInitResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ForgetPasswordInitResponseModelToJson(this);
}
