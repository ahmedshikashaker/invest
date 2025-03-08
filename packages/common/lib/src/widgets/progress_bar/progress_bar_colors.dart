import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIProgressBarColors extends ThemeExtension<KIProgressBarColors>
    with DiagnosticableTreeMixin {
  final Color progressColor;

  final Color backgroundColor;

  const KIProgressBarColors({
    required this.progressColor,
    required this.backgroundColor,
  });

  @override
  KIProgressBarColors copyWith({
    Color? progressColor,
    Color? backgroundColor,
  }) {
    return KIProgressBarColors(
      progressColor: progressColor ?? this.progressColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  KIProgressBarColors lerp(
      ThemeExtension<KIProgressBarColors>? other, double t) {
    if (other is! KIProgressBarColors) return this;

    return KIProgressBarColors(
      progressColor: colorPremulLerp(progressColor, other.progressColor, t)!,
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIProgressBarColors"))
      ..add(ColorProperty("progressColor", progressColor))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
