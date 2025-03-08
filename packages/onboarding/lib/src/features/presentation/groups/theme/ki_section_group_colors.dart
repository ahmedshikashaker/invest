import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class KISectionGroupColors extends ThemeExtension<KISectionGroupColors>
    with DiagnosticableTreeMixin {
  final Color? background;
  final Color? borderColor;
  final Color? titleTextColor;
  final Color? errorTextColor;

  const KISectionGroupColors({
    this.background,
    this.borderColor,
    this.titleTextColor,
    this.errorTextColor,
  });

  @override
  KISectionGroupColors copyWith({
    Color? background,
    Color? border,
    Color? titleTextStyle,
    Color? errorText,
  }) {
    return KISectionGroupColors(
      background: background ?? this.background,
      borderColor: border ?? this.borderColor,
      titleTextColor: titleTextStyle ?? this.titleTextColor,
      errorTextColor: errorText ?? this.errorTextColor,
    );
  }

  @override
  KISectionGroupColors lerp(
      ThemeExtension<KISectionGroupColors>? other, double t) {
    if (other is! KISectionGroupColors) return this;

    return KISectionGroupColors(
      background: Color.lerp(background, other.background, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      titleTextColor: Color.lerp(titleTextColor, other.titleTextColor, t),
      errorTextColor: Color.lerp(errorTextColor, other.errorTextColor, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIFieldGroupColors"))
      ..add(ColorProperty("background", background))
      ..add(ColorProperty("border", borderColor))
      ..add(ColorProperty("titleText", titleTextColor))
      ..add(ColorProperty("errorText", errorTextColor));
  }
}
