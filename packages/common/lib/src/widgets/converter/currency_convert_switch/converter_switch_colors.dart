import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIConverterSwitchColors extends ThemeExtension<KIConverterSwitchColors>
    with DiagnosticableTreeMixin {
  /// The icon color of the Converter Switch.
  final Color iconColor;

  KIConverterSwitchColors({
    required this.iconColor,
  });

  @override
  KIConverterSwitchColors copyWith({
    Color? iconColor,
  }) {
    return KIConverterSwitchColors(
      iconColor: iconColor ?? this.iconColor,
    );
  }

  @override
  KIConverterSwitchColors lerp(
      ThemeExtension<KIConverterSwitchColors>? other, double t) {
    if (other is! KIConverterSwitchColors) return this;

    return KIConverterSwitchColors(
      iconColor: colorPremulLerp(iconColor, other.iconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterSwitchColors"))
      ..add(ColorProperty("iconColor", iconColor));
  }
}
