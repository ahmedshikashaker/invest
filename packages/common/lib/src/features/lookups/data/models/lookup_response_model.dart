import 'package:common_dependencies/common_dependencies.dart';

part 'lookup_response_model.g.dart';

typedef LookupsResponseModel = List<LookupModel>?;

@JsonSerializable()
class LookupModel {
  final String? label;
  final String? value;

  LookupModel({this.label, this.value});

  factory LookupModel.fromJson(Map<String, dynamic> json) =>
      _$LookupModelFromJson(json);

  Map<String, dynamic> toJson() => _$LookupModelToJson(this);
}
