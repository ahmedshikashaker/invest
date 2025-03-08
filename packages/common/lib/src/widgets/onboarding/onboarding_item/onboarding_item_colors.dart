import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIOnboardingItemColors extends ThemeExtension<KIOnboardingItemColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;
  final Color inactiveOverlayColor;

  const KIOnboardingItemColors({
    required this.backgroundColor,
    required this.inactiveOverlayColor,
  });

  @override
  KIOnboardingItemColors copyWith({
    Color? backgroundColor,
    Color? inactiveOverlayColor,
  }) {
    return KIOnboardingItemColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      inactiveOverlayColor: inactiveOverlayColor ?? this.inactiveOverlayColor,

    );
  }

  @override
  KIOnboardingItemColors lerp(
      covariant ThemeExtension<KIOnboardingItemColors>? other, double t) {
    if (other is! KIOnboardingItemColors) return this;

    return KIOnboardingItemColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      inactiveOverlayColor: colorPremulLerp(inactiveOverlayColor, other.inactiveOverlayColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('backgroundColor', backgroundColor));
    properties.add(ColorProperty('inactiveOverlayColor', inactiveOverlayColor));
  }
}
