import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIConverterFieldColors extends ThemeExtension<KIConverterFieldColors>
    with DiagnosticableTreeMixin {
  /// The amount color of the Converter.
  final Color amountColor;

  /// The borderField color of the Converter.
  final Color borderFieldColor;

  KIConverterFieldColors({
    required this.amountColor,
    required this.borderFieldColor,
  });

  @override
  KIConverterFieldColors copyWith({
    Color? amountColor,
    Color? borderFieldColor,
  }) {
    return KIConverterFieldColors(
      amountColor: amountColor ?? this.amountColor,
      borderFieldColor: borderFieldColor ?? this.borderFieldColor,
    );
  }

  @override
  KIConverterFieldColors lerp(
      ThemeExtension<KIConverterFieldColors>? other, double t) {
    if (other is! KIConverterFieldColors) return this;

    return KIConverterFieldColors(
      amountColor: colorPremulLerp(amountColor, other.amountColor, t)!,
      borderFieldColor: colorPremulLerp(borderFieldColor, other.borderFieldColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterColors"))
      ..add(ColorProperty("amountColor", amountColor))
      ..add(ColorProperty("borderFieldColor", borderFieldColor))
    ;
  }
}
