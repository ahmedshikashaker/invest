import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KIAppScaffoldColors extends ThemeExtension<KIAppScaffoldColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;

  const KIAppScaffoldColors({
    required this.backgroundColor,
  });

  @override
  KIAppScaffoldColors copyWith({
    Color? backgroundColor,
  }) {
    return KIAppScaffoldColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  KIAppScaffoldColors lerp(
      ThemeExtension<KIAppScaffoldColors>? other, double t) {
    if (other is! KIAppScaffoldColors) return this;

    return KIAppScaffoldColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAppScaffoldColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor));
  }
}
