import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIProgressBarProperties extends ThemeExtension<KIProgressBarProperties>
    with DiagnosticableTreeMixin {
  final double height;

  final double borderRadius;

  final AppGapSize titleGapSize;
  final AppGapSize verticalGapSize;

  final AppTextStyle titleTextStyle;
  final AppTextStyle stepTextStyle;

  const KIProgressBarProperties({
    required this.height,
    required this.borderRadius,
    required this.titleGapSize,
    required this.verticalGapSize,
    required this.titleTextStyle,
    required this.stepTextStyle,
  });

  @override
  KIProgressBarProperties copyWith({
    double? height,
    double? borderRadius,
    AppGapSize? titleGapSize,
    AppGapSize? verticalGapSize,
    AppTextStyle? titleTextStyle,
    AppTextStyle? stepTextStyle,
  }) {
    return KIProgressBarProperties(
      height: height ?? this.height,
      borderRadius: borderRadius ?? this.borderRadius,
      titleGapSize: titleGapSize ?? this.titleGapSize,
      verticalGapSize: verticalGapSize ?? this.verticalGapSize,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      stepTextStyle: stepTextStyle ?? this.stepTextStyle,
    );
  }

  @override
  KIProgressBarProperties lerp(
      ThemeExtension<KIProgressBarProperties>? other, double t) {
    if (other is! KIProgressBarProperties) return this;

    return KIProgressBarProperties(
      height: lerpDouble(height, other.height, t)!,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t)!,
      titleGapSize: titleGapSize,
      verticalGapSize: verticalGapSize,
      titleTextStyle: titleTextStyle,
      stepTextStyle: stepTextStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIProgressBarProperties"))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("borderRadius", borderRadius))
      ..add(DiagnosticsProperty<AppGapSize>("titleGapSize", titleGapSize))
      ..add(DiagnosticsProperty<AppGapSize>("verticalGapSize", verticalGapSize))
      ..add(DiagnosticsProperty<AppTextStyle>("titleTextStyle", titleTextStyle))
      ..add(DiagnosticsProperty<AppTextStyle>("stepTextStyle", stepTextStyle));
  }
}
