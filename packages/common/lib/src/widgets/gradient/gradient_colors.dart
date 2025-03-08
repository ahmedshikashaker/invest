import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIGradientColors extends ThemeExtension<KIGradientColors>
    with DiagnosticableTreeMixin {
  final Color primaryColor;
  final Color secondaryColor;

  const KIGradientColors({
    required this.primaryColor,
    required this.secondaryColor,
  });

  @override
  KIGradientColors copyWith({Color? primary, Color? secondary}) {
    return KIGradientColors(
        primaryColor: primary ?? this.primaryColor,
        secondaryColor: secondary ?? this.secondaryColor);
  }

  @override
  KIGradientColors lerp(
      covariant ThemeExtension<KIGradientColors>? other, double t) {
    if (other is! KIGradientColors) return this;

    return KIGradientColors(
      primaryColor: colorPremulLerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: colorPremulLerp(secondaryColor, other.secondaryColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('primary', primaryColor))
      ..add(ColorProperty('secondary', secondaryColor));
  }
}
