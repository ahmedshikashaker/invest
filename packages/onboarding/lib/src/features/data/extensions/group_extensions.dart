import 'package:onboarding/src/features/data/extensions/field_extensions.dart';
import 'package:onboarding/src/features/data/models/group.dart';

extension GroupVisibility on Group {
  bool hasVisibleField(Map<String, dynamic> answers) {
    return fields.any((field) => field.isVisible(answers));
  }
}
