import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIRadioColors extends ThemeExtension<KIRadioColors>
    with DiagnosticableTreeMixin {
  /// The background color of the checked MoonCheckbox.
  final Color activeFillColor;

  /// The background color of the unchecked MoonCheckbox.
  final Color inactiveBorderColor;

  final Color inactiveBackgroundColor;

  const KIRadioColors({
    required this.activeFillColor,
    required this.inactiveBorderColor,
    required this.inactiveBackgroundColor,
  });

  @override
  KIRadioColors copyWith({
    Color? activeColor,
    Color? inactiveBorderColor,
    Color? inactiveBackgroundColor,
  }) {
    return KIRadioColors(
      activeFillColor: activeColor ?? this.activeFillColor,
      inactiveBorderColor: inactiveBorderColor ?? this.inactiveBorderColor,
      inactiveBackgroundColor:
          inactiveBackgroundColor ?? this.inactiveBackgroundColor,
    );
  }

  @override
  KIRadioColors lerp(ThemeExtension<KIRadioColors>? other, double t) {
    if (other is! KIRadioColors) return this;

    return KIRadioColors(
      activeFillColor:
          colorPremulLerp(activeFillColor, other.activeFillColor, t)!,
      inactiveBorderColor:
          colorPremulLerp(inactiveBorderColor, other.inactiveBorderColor, t)!,
      inactiveBackgroundColor: colorPremulLerp(
          inactiveBackgroundColor, other.inactiveBackgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIRadioColors"))
      ..add(ColorProperty("activeColor", activeFillColor))
      ..add(ColorProperty("inactiveBorderColor", inactiveBorderColor))
      ..add(ColorProperty("inactiveBackgroundColor", inactiveBackgroundColor));
  }
}
