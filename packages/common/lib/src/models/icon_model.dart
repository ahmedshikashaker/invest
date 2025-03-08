import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invest_common/src/models/color_theme_model.dart';

import 'icon_model_converter.dart';

part 'icon_model.freezed.dart';

part 'icon_model.g.dart';

@freezed
class IconModel with _$IconModel {
  const IconModel._();

  factory IconModel.id({
    final String? id,
    final ColorThemeModel? color,
    final ColorThemeModel? backgroundColor,
  }) = IconModelId;

  factory IconModel.base64({
    final String? base64,
    final ColorThemeModel? color,
    final ColorThemeModel? backgroundColor,
  }) = IconModelBase64;

  // const factory IconModel(@IconModelConverter() IconModel myResponse) =
  //     MyModelData;

  factory IconModel.fromJson(Map<String, dynamic> json) =>
      _$IconModelFromJson(json);
}
