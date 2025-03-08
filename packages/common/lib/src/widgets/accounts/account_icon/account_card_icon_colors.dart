import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIAccountIconColors extends ThemeExtension<KIAccountIconColors>
    with DiagnosticableTreeMixin {
  /// The iconColor of the Account card.
  final Color iconColor;

  /// The iconBackgroundColor of the Account card.
  final Color iconBackgroundColor;

  const KIAccountIconColors({
    required this.iconColor,
    required this.iconBackgroundColor,
  });

  @override
  KIAccountIconColors copyWith({
    Color? iconColor,
    Color? iconBackgroundColor,
  }) {
    return KIAccountIconColors(
      iconColor: iconColor ?? this.iconColor,
      iconBackgroundColor: iconBackgroundColor ?? this.iconBackgroundColor,
    );
  }

  @override
  KIAccountIconColors lerp(
      ThemeExtension<KIAccountIconColors>? other, double t) {
    if (other is! KIAccountIconColors) return this;

    return KIAccountIconColors(
      iconColor: colorPremulLerp(iconColor, other.iconColor, t)!,
      iconBackgroundColor:
      colorPremulLerp(iconBackgroundColor, other.iconBackgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAccountIconColors"))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("iconBackgroundColor", iconBackgroundColor));
  }
}
