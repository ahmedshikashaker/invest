import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KISuccessfulColors extends ThemeExtension<KISuccessfulColors>
    with DiagnosticableTreeMixin {
  final Gradient gradient;
  final Color backgroundColor;

  const KISuccessfulColors({required this.gradient, required this.backgroundColor});

  @override
  KISuccessfulColors copyWith({
    Gradient? gradient,
    Color? backgroundColor,
  }) {
    return KISuccessfulColors(
        gradient: gradient ?? this.gradient,
        backgroundColor: backgroundColor ?? this.backgroundColor);
  }

  @override
  KISuccessfulColors lerp(ThemeExtension<KISuccessfulColors>? other, double t) {
    if (other is! KISuccessfulColors) return this;

    return KISuccessfulColors(gradient: gradient, backgroundColor: backgroundColor);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIInfoColors"))
      ..add(DiagnosticsProperty<Gradient>("gradient", gradient))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
