import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIConverterColors extends ThemeExtension<KIConverterColors>
    with DiagnosticableTreeMixin {
  /// The background color of the Converter.
  final Color backgroundColor;

  /// The divider color of the Converter.
  final Color dividerColor;

  KIConverterColors({
    required this.dividerColor,
    required this.backgroundColor,
  });

  @override
  KIConverterColors copyWith({
    Color? dividerColor,
    Color? backgroundColor,
  }) {
    return KIConverterColors(
      dividerColor: dividerColor ?? this.dividerColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  KIConverterColors lerp(ThemeExtension<KIConverterColors>? other, double t) {
    if (other is! KIConverterColors) return this;

    return KIConverterColors(
      dividerColor: colorPremulLerp(dividerColor, other.dividerColor, t)!,
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterColors"))
      ..add(ColorProperty("dividerColor", dividerColor))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
