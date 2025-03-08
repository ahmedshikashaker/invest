import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIContrastButtonColors extends ThemeExtension<KIContrastButtonColors>
    with DiagnosticableTreeMixin {
  /// The Text Button color of the Converter.
  final Color textButtonColor;

  KIContrastButtonColors({
    required this.textButtonColor,
  });

  @override
  KIContrastButtonColors copyWith({
    Color? textButtonColor,
  }) {
    return KIContrastButtonColors(
      textButtonColor:
          textButtonColor ?? this.textButtonColor,
    );
  }

  @override
  KIContrastButtonColors lerp(ThemeExtension<KIContrastButtonColors>? other, double t) {
    if (other is! KIContrastButtonColors) return this;

    return KIContrastButtonColors(
      textButtonColor: colorPremulLerp(
          textButtonColor, other.textButtonColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIContrastButtonColors"))
      ..add(ColorProperty("textButtonColor", textButtonColor));
  }
}
