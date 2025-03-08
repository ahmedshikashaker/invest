import 'package:onboarding/src/features/data/models/field.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

import '../models/validation.dart';

extension FileFieldExtensions on FileField {
  List<String> getValidationMimeType() {
    List<String> types =
        validations?.whereType<MimeTypeValidation>().firstOrNull?.value ?? [];

    final List<String> extensions = types
        .map((mimeType) => extensionsFromMime(mimeType)) // List<List<String>>
        .expand((extensions) => extensions) // Flattens List<List<String>> → List<String>
        .whereType<String>() // Ensures all values are valid strings
        .toList();

    return extensions;
  }

  String getMimeTypeDescriptions() {
    final mimeTypes =
        validations?.whereType<MimeTypeValidation>().firstOrNull?.value;

    if (mimeTypes == null || mimeTypes.isEmpty) {
      return '';
    }

    final extensions = mimeTypes
        .map((mimeType) => extensionFromMime(mimeType))
        .where((ext) => ext != null)
        .join(', ');

    return extensions;
  }

  String getMaxSizeDescriptions(BuildContext context) {
    final maxSize =
        validations?.whereType<MaxSizeValidation>().firstOrNull?.value;

    if (maxSize == null || maxSize.isNegative) {
      return '';
    }

    final extensions =
        "${context.boardingLocal.upTo} ${bytesToMegabytes(maxSize)}";

    return extensions;
  }

  int? getValidationMaxSize() {
    return validations?.whereType<MaxSizeValidation>().firstOrNull?.value;
  }

  String bytesToMegabytes(int bytes) {
    return '${bytes ~/ (1024 * 1024)} MB';
  }
}
