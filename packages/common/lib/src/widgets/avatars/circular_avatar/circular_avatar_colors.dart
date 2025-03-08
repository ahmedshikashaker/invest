import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KICircularAvatarColors extends ThemeExtension<KICircularAvatarColors>
    with DiagnosticableTreeMixin {
  final Color iconColor;
  final Color backgroundColor;

  const KICircularAvatarColors(
      {required this.iconColor,
      required this.backgroundColor});

  @override
  KICircularAvatarColors copyWith({
    Color? iconColor,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return KICircularAvatarColors(
        iconColor: iconColor ?? this.iconColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,);
  }

  @override
  KICircularAvatarColors lerp(
      covariant ThemeExtension<KICircularAvatarColors>? other, double t) {
    if (other is! KICircularAvatarColors) return this;

    return KICircularAvatarColors(
        iconColor: colorPremulLerp(iconColor, other.iconColor, t)!,
        backgroundColor:colorPremulLerp(backgroundColor, other.backgroundColor, t)!);}

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(ColorProperty('backgroundColor', backgroundColor))
      ..add(ColorProperty('iconColor', iconColor));
  }
}
