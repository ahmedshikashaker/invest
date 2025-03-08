import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

part 'step_model.g.dart';

@JsonSerializable()
class StepModel {
  String? id;
  String? name;
  String? title;
  String? description;
  num? progress;
  bool? isCompleted;
  NavigationModel? navigation;
  IconModelId? icon;

  StepModel({
    this.id,
    this.name,
    this.title,
    this.description,
    this.progress,
    this.isCompleted,
    this.navigation,
    this.icon
  });

  factory StepModel.fromJson(Map<String, dynamic> json) =>
      _$StepModelFromJson(json);

  Map<String, dynamic> toJson() => _$StepModelToJson(this);
}

@JsonSerializable()
class NavigationModel {
  String? previous;
  String? next;

  NavigationModel({
    this.previous,
    this.next,
  });

  factory NavigationModel.fromJson(Map<String, dynamic> json) =>
      _$NavigationModelFromJson(json);

  Map<String, dynamic> toJson() => _$NavigationModelToJson(this);
}
