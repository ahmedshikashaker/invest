import 'package:kib_core/kib_core.dart';

extension RemoveNullEmptyMapValuesExtension on Map<String, dynamic> {
  /// remove null & empty values from Map
  void removeNullEmptyMapValues() => removeWhere(
      (_, value) => value == null || (value is String && value.isBlank));
}
