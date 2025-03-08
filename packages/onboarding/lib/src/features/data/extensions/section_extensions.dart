import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/extensions/group_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/data/models/section.dart';

extension SectionVisibility on Section {
  bool hasVisibleGroup(Map<String, dynamic> answers) {
    return groups.any((group) => group.hasVisibleField(answers));
  }

  List<Field> getVisibleFields(Map<String, dynamic> answers) {
    return allFields.where((field) => field.isVisible(answers)).toList();
  }

  List<Field> get allFields => groups.expand((group) => group.fields).toList();
}
