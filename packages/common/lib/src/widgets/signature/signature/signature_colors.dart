import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KISignatureColors extends ThemeExtension<KISignatureColors>
    with DiagnosticableTreeMixin {
  /// The pen color of the Signature.
  final Color penColor;

  /// The backgroundColor of the Signature.
  final Color backgroundColor;

  /// The applyColor of the Signature button.
  final Color applyColor;

  /// The clearColor of the Signature button.
  final Color clearColor;

  const KISignatureColors({
    required this.penColor,
    required this.backgroundColor,
    required this.applyColor,
    required this.clearColor,
  });

  @override
  KISignatureColors copyWith({
    Color? penColor,
    Color? backgroundColor,
    Color? applyColor,
    Color? clearColor,
  }) {
    return KISignatureColors(
      penColor: penColor ?? this.penColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      applyColor: applyColor ?? this.applyColor,
      clearColor: clearColor ?? this.clearColor,
    );
  }

  @override
  KISignatureColors lerp(ThemeExtension<KISignatureColors>? other, double t) {
    if (other is! KISignatureColors) return this;

    return KISignatureColors(
      penColor: colorPremulLerp(penColor, other.penColor, t)!,
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      applyColor: colorPremulLerp(applyColor, other.applyColor, t)!,
      clearColor: colorPremulLerp(clearColor, other.clearColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KISignatureColors"))
      ..add(ColorProperty("penColor", penColor))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("applyColor", applyColor))
      ..add(ColorProperty("clearColor", clearColor));
  }
}
