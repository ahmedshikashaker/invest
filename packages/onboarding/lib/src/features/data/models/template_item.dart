import 'package:freezed_annotation/freezed_annotation.dart';
part 'template_item.freezed.dart';
part 'template_item.g.dart';

@freezed
class TemplateItem with _$TemplateItem {
  factory TemplateItem({
    required String id,
    required String type,
    String? placeholder,
  }) = _TemplateItem;

  factory TemplateItem.fromJson(Map<String, dynamic> json) =>
      _$TemplateItemFromJson(json);
}