import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/models/field.dart';
part 'lookup_item.freezed.dart';
part 'lookup_item.g.dart';

@freezed
class LookupItem with _$LookupItem {
  factory LookupItem({
    required String value,
    required String label,
    String? description,
    @Default([]) List<Field> fields,
  }) = _LookupItem;

  factory LookupItem.fromJson(Map<String, dynamic> json) =>
      _$LookupItemFromJson(json);
}