import 'package:onboarding/src/features/data/models/field.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';

extension FileValueExtensions on FileValue {
  FileInfo getFileInfo() {
    return FileInfo(name,
        extention: extensionFromMime(mimeType),
        totalSize: size,
        uploadedSize: size);
  }
}
