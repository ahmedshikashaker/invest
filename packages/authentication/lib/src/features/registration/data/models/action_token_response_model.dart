import 'package:common_dependencies/common_dependencies.dart';

part 'action_token_response_model.g.dart';

@JsonSerializable()
class ActionTokenResponseModel {
  final String? actionToken;

  ActionTokenResponseModel({
    this.actionToken,
  });

  factory ActionTokenResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ActionTokenResponseModelFromJson(json);
}
