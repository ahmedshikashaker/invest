import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIAccountCardColors extends ThemeExtension<KIAccountCardColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;

  const KIAccountCardColors({
    required this.backgroundColor,
  });

  @override
  KIAccountCardColors copyWith({
    Color? backgroundColor,
  }) {
    return KIAccountCardColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  KIAccountCardColors lerp(
      ThemeExtension<KIAccountCardColors>? other, double t) {
    if (other is! KIAccountCardColors) return this;

    return KIAccountCardColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAccountCardColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
