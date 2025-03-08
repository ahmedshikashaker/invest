import 'package:common_dependencies/common_dependencies.dart';

part 'request_verify_email_request_model.g.dart';

@JsonSerializable()
class RequestVerifyEmailRequestModel {
  final String? email;

  RequestVerifyEmailRequestModel({
    this.email,
  });

  Map<String, dynamic> toJson() => _$RequestVerifyEmailRequestModelToJson(this);
}
