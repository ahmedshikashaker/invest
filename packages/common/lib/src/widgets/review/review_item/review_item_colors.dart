import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

class KIReviewItemColors extends ThemeExtension<KIReviewItemColors>
    with DiagnosticableTreeMixin {
  final Color dividerColor;
  final Color backgroundColor;

  const KIReviewItemColors({
    required this.dividerColor,
    required this.backgroundColor,
  });

  @override
  KIReviewItemColors copyWith({
    Color? dividerColor,
    Color? backgroundColor
  }) {
    return KIReviewItemColors(
        backgroundColor: backgroundColor ?? this.backgroundColor,
        dividerColor: dividerColor ?? this.dividerColor);
  }

  @override
  KIReviewItemColors lerp(
      covariant ThemeExtension<KIReviewItemColors>? other, double t) {
    if (other is! KIReviewItemColors) return this;

    return KIReviewItemColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      dividerColor: colorPremulLerp(dividerColor, other.dividerColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('dividerColor', dividerColor))
      ..add(ColorProperty('backgroundColor', backgroundColor));
  }
}
