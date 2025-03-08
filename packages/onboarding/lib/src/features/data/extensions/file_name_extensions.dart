import 'package:onboarding/src/features/data/models/field.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';

extension FileNameExtensions on FilePickerResult {
  String getFileExtension() {
    return this.xFiles.first.name.split('.').last;
  }
}
