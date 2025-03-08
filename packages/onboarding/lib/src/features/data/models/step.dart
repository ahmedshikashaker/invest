
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/models/section.dart';

part 'step.freezed.dart';
part 'step.g.dart';


@freezed
class Step with _$Step {
  factory Step({
    required String id,
    required String stepLabel,
    required String title,
    required List<Section> sections,
    String? currentSectionId
  }) = _Step;

  factory Step.fromJson(Map<String, dynamic> json) => _$StepFromJson(json);
}


