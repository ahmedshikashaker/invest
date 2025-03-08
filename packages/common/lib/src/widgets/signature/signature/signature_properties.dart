import 'dart:ui';

import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KISignatureProperties extends ThemeExtension<KISignatureProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the Signature button.
  final BorderRadiusGeometry borderRadius;

  /// The border of the Signature .
  final Border border;

  /// The padding of the Signature card.
  final AppEdgeInsets padding;

  /// The spacing between button of the Signature.
  final double spacing;

  /// The height of the Signature.
  final double height;

  /// The penStrokeWidth of the Signature.
  final double penStrokeWidth;

  /// The apply style of the Signature button.
  final AppTextStyle applyStyle;

  /// The clear style of the Signature button.
  final AppTextStyle clearStyle;

  /// The gap size between Signature and button.
  final AppGapSize gapSize;

  const KISignatureProperties({
    required this.borderRadius,
    required this.spacing,
    required this.height,
    required this.penStrokeWidth,
    required this.applyStyle,
    required this.clearStyle,
    required this.gapSize,
    required this.padding,
    required this.border,
  });

  @override
  KISignatureProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    double? spacing,
    double? penStrokeWidth,
    AppTextStyle? applyStyle,
    AppTextStyle? clearStyle,
    AppGapSize? gapSize,
    double? height,
    AppEdgeInsets? padding,
    Border? border,
  }) {
    return KISignatureProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      spacing: spacing ?? this.spacing,
      penStrokeWidth: penStrokeWidth ?? this.penStrokeWidth,
      applyStyle: applyStyle ?? this.applyStyle,
      clearStyle: clearStyle ?? this.clearStyle,
      gapSize: gapSize ?? this.gapSize,
      height: height ?? this.height,
      padding: padding ?? this.padding,
      border: border ?? this.border,
    );
  }

  @override
  KISignatureProperties lerp(
      ThemeExtension<KISignatureProperties>? other, double t) {
    if (other is! KISignatureProperties) return this;

    return KISignatureProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      spacing: lerpDouble(spacing, other.spacing, t)!,
      height: lerpDouble(height, other.height, t)!,
      penStrokeWidth: lerpDouble(penStrokeWidth, other.penStrokeWidth, t)!,
      applyStyle: applyStyle,
      clearStyle: clearStyle,
      gapSize: gapSize,
      padding: padding,
      border: Border.lerp(border, other.border, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "UploadCardSizeProperties"))
      ..add(DoubleProperty("spacing", spacing))
      ..add(DoubleProperty("height", height))
      ..add(DoubleProperty("penStrokeWidth", penStrokeWidth))
      ..add(DiagnosticsProperty<AppTextStyle>("applyStyle", applyStyle))
      ..add(DiagnosticsProperty<AppTextStyle>("clearStyle", clearStyle))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<Border>("border", border))
      ..add(DiagnosticsProperty<AppGapSize>("gapSize", gapSize));
  }
}
