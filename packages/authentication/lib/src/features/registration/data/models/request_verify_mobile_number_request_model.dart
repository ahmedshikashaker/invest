import 'package:common_dependencies/common_dependencies.dart';

part 'request_verify_mobile_number_request_model.g.dart';

@JsonSerializable()
class RequestVerifyMobileNumberRequestModel {
  final String? mobileNumber;
  final String? actionToken;

  RequestVerifyMobileNumberRequestModel({
    this.mobileNumber,
    this.actionToken,
  });

  Map<String, dynamic> toJson() =>
      _$RequestVerifyMobileNumberRequestModelToJson(this);
}
