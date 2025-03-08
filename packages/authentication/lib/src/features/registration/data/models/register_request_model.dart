import 'package:common_dependencies/common_dependencies.dart';

part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel {
  final String civilId;
  final String password;
  final String actionToken;

  RegisterRequestModel({
    required this.civilId,
    required this.password,
    required this.actionToken,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
