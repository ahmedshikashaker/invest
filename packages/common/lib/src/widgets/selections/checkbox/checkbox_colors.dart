import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KICheckboxColors extends ThemeExtension<KICheckboxColors>
    with DiagnosticableTreeMixin {
  /// The background color of the checked Checkbox.
  final Color activeFillColor;

  /// The background color of the unchecked Checkbox.
  final Color unactiveFillColor;

  /// The activeIcon color of the checked Checkbox.
  final Color activeIconColor;

  /// The unActiveIcon color of the unchecked Checkbox.
  final Color unActiveIconColor;

  const KICheckboxColors({
    required this.activeFillColor,
    required this.unactiveFillColor,
    required this.activeIconColor,
    required this.unActiveIconColor,
  });

  @override
  KICheckboxColors copyWith({
    Color? activeColor,
    Color? inactiveBorderColor,
    Color? activeIconColor,
    Color? unActiveIconColor,
  }) {
    return KICheckboxColors(
      activeFillColor: activeColor ?? this.activeFillColor,
      unactiveFillColor: inactiveBorderColor ?? this.unactiveFillColor,
      activeIconColor: activeIconColor ?? this.activeIconColor,
      unActiveIconColor: unActiveIconColor ?? this.unActiveIconColor,
    );
  }

  @override
  KICheckboxColors lerp(ThemeExtension<KICheckboxColors>? other, double t) {
    if (other is! KICheckboxColors) return this;

    return KICheckboxColors(
      activeFillColor:
          colorPremulLerp(activeFillColor, other.activeFillColor, t)!,
      unactiveFillColor:
          colorPremulLerp(unactiveFillColor, other.unactiveFillColor, t)!,
      activeIconColor:
          colorPremulLerp(activeIconColor, other.activeIconColor, t)!,
      unActiveIconColor:
          colorPremulLerp(unActiveIconColor, other.unActiveIconColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KICheckboxColors"))
      ..add(ColorProperty("activeColor", activeFillColor))
      ..add(ColorProperty("inactiveColor", unactiveFillColor))
      ..add(ColorProperty("activeIconColor", activeIconColor))
      ..add(ColorProperty("unActiveIconColor", unActiveIconColor));
  }
}
