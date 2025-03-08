import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIUploadCardColors extends ThemeExtension<KIUploadCardColors>
    with DiagnosticableTreeMixin {
  /// The background color of the Upload Card.
  final Color backgroundColor;

  /// The icon color of the Upload Card.
  final Color iconColor;

  /// The info bar color of the Upload Card.
  final Color fileUploadColor;

  const KIUploadCardColors({
    required this.backgroundColor,
    required this.iconColor,
    required this.fileUploadColor,
  });

  @override
  KIUploadCardColors copyWith({
    Color? backgroundColor,
    Color? iconColor,
    Color? InfoBackgroundColor,
    Color? fileUploadColor,
  }) {
    return KIUploadCardColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      iconColor: iconColor ?? this.iconColor,
      fileUploadColor: fileUploadColor ?? this.fileUploadColor,
    );
  }

  @override
  KIUploadCardColors lerp(ThemeExtension<KIUploadCardColors>? other, double t) {
    if (other is! KIUploadCardColors) return this;

    return KIUploadCardColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      iconColor: colorPremulLerp(iconColor, other.iconColor, t)!,
      fileUploadColor:
          colorPremulLerp(fileUploadColor, other.fileUploadColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIUploadCardColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("fileUploadColor", fileUploadColor));
  }
}
