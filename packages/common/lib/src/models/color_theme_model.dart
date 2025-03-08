import 'package:freezed_annotation/freezed_annotation.dart';

part 'color_theme_model.freezed.dart';
part 'color_theme_model.g.dart';
@freezed
class ColorThemeModel with _$ColorThemeModel {
  factory ColorThemeModel({
    final String? light,
    final String? dark,
  }) = _ColorThemeModel;

  factory ColorThemeModel.fromJson(Map<String, dynamic> json) =>
      _$ColorThemeModelFromJson(json);
}