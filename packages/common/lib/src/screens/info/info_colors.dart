import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIInfoColors extends ThemeExtension<KIInfoColors>
    with DiagnosticableTreeMixin {
  final Gradient gradient;
  final Color backgroundColor;

  const KIInfoColors({required this.gradient, required this.backgroundColor});

  @override
  KIInfoColors copyWith({
    Gradient? gradient,
    Color? backgroundColor,
  }) {
    return KIInfoColors(
        gradient: gradient ?? this.gradient,
        backgroundColor: backgroundColor ?? this.backgroundColor);
  }

  @override
  KIInfoColors lerp(ThemeExtension<KIInfoColors>? other, double t) {
    if (other is! KIInfoColors) return this;

    return KIInfoColors(gradient: gradient, backgroundColor: backgroundColor);
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
