import 'package:common_dependencies/common_dependencies.dart';

part 'progress_model.g.dart';

@JsonSerializable()
class ProgressModel {
  String? currentStepId;
  String? currentSectionId;

  ProgressModel({
    this.currentStepId,
    this.currentSectionId,
  });

  factory ProgressModel.fromJson(Map<String, dynamic> json) =>
      _$ProgressModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProgressModelToJson(this);
}


