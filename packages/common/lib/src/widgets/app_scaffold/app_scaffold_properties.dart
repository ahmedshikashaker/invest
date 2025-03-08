import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIAppScaffoldProperties extends ThemeExtension<KIAppScaffoldProperties>
    with DiagnosticableTreeMixin {
  final double overlapAppbarWithbody;

  final BorderRadiusGeometry bodyBorderRadius;

  const KIAppScaffoldProperties({
    required this.overlapAppbarWithbody,
    required this.bodyBorderRadius,
  });

  @override
  KIAppScaffoldProperties copyWith({
    double? overlapAppbarWithbody,
    BorderRadiusGeometry? bodyBorderRadius,
    AppGapSize? titleGapSize,
    AppGapSize? verticalGapSize,
    AppTextStyle? titleTextStyle,
    AppTextStyle? stepTextStyle,
  }) {
    return KIAppScaffoldProperties(
      overlapAppbarWithbody:
          overlapAppbarWithbody ?? this.overlapAppbarWithbody,
      bodyBorderRadius: bodyBorderRadius ?? this.bodyBorderRadius,
    );
  }

  @override
  KIAppScaffoldProperties lerp(
      ThemeExtension<KIAppScaffoldProperties>? other, double t) {
    if (other is! KIAppScaffoldProperties) return this;

    return KIAppScaffoldProperties(
      overlapAppbarWithbody:
          lerpDouble(overlapAppbarWithbody, other.overlapAppbarWithbody, t)!,
      bodyBorderRadius: bodyBorderRadius,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAppScaffoldProperties"))
      ..add(DoubleProperty("height", overlapAppbarWithbody))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", bodyBorderRadius));
  }
}
