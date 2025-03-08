import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onboarding/src/features/data/models/field.dart';

part 'group.freezed.dart';

part 'group.g.dart';

@freezed
class Group with _$Group {
  factory Group({
    required String id,
    String? title,
    String? description,
    @Default([]) List<Field> fields,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}
