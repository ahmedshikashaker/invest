import 'package:common_dependencies/common_dependencies.dart';

part 'verify_request_model.g.dart';

@JsonSerializable()
class VerifyRequestModel {
  final String? otp;
  final String? actionToken;

  VerifyRequestModel({
    this.otp,
    this.actionToken,
  });

  Map<String, dynamic> toJson() => _$VerifyRequestModelToJson(this);
}
