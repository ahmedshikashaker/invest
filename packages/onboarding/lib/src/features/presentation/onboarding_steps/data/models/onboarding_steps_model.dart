import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/data/models/progress_model.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/data/models/step_model.dart';

part 'onboarding_steps_model.g.dart';

@JsonSerializable()
class StepSummaryModel {
  String? id;
  List<StepModel>? steps;
  ProgressModel? progress;
  String? actionButtonTitle;

  StepSummaryModel({
    this.id,
    this.steps,
    this.progress,
    this.actionButtonTitle,
  });

  factory StepSummaryModel.fromJson(Map<String, dynamic> json) =>
      _$StepSummaryModelFromJson(json);

  Map<String, dynamic> toJson() => _$StepSummaryModelToJson(this);
}
