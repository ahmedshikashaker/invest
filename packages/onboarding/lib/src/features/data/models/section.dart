import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/models/group.dart';
import 'package:onboarding/src/features/data/models/progress.dart';

part 'section.freezed.dart';
part 'section.g.dart';

@freezed
class Section with _$Section {
  factory Section({
    required String id,
    required String title,
    required Progress progressBar,
    required List<Group> groups,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}