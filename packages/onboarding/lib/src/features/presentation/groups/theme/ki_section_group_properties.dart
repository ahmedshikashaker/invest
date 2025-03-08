import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'dart:ui';

@immutable
class KISectionGroupProperties extends ThemeExtension<KISectionGroupProperties>
    with DiagnosticableTreeMixin {
  final AppEdgeInsets? padding;
  final double? borderRadius;
  final double? borderWidth;
  final AppTextStyle? titleTextStyle;
  final AppTextStyle? descriptionTextStyle;
  final AppGapSize? childrenSpacing;
  final AppGapSize? titleSpacing;
  final AppGapSize? descriptionSpacing;

  const KISectionGroupProperties({
    this.padding,
    this.borderRadius,
    this.borderWidth,
    this.titleTextStyle,
    this.descriptionTextStyle,
    this.childrenSpacing,
    this.titleSpacing,
    this.descriptionSpacing,
  });

  @override
  KISectionGroupProperties copyWith({
    AppEdgeInsets? padding,
    double? borderRadius,
    double? borderWidth,
    AppTextStyle? titleTextStyle,
    AppTextStyle? descriptionTextStyle,
    AppGapSize? childrenSpacing,
    AppGapSize? titleSpacing,
    AppGapSize? descriptionSpacing,
  }) {
    return KISectionGroupProperties(
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      descriptionTextStyle: descriptionTextStyle ?? this.descriptionTextStyle,
      childrenSpacing: childrenSpacing ?? this.childrenSpacing,
      titleSpacing: titleSpacing ?? this.titleSpacing,
      descriptionSpacing: descriptionSpacing ?? this.descriptionSpacing,
    );
  }

  @override
  KISectionGroupProperties lerp(
      ThemeExtension<KISectionGroupProperties>? other, double t) {
    if (other is! KISectionGroupProperties) return this;

    return KISectionGroupProperties(
      padding: other.padding,
      borderRadius: lerpDouble(borderRadius, other.borderRadius, t),
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t),
      titleTextStyle: other.titleTextStyle,
      descriptionTextStyle: other.descriptionTextStyle,
      childrenSpacing: childrenSpacing,
      titleSpacing: titleSpacing,
      descriptionSpacing: descriptionSpacing,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIFieldGroupProperties"))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DoubleProperty("borderRadius", borderRadius))
      ..add(DoubleProperty("borderWidth", borderWidth))
      ..add(DiagnosticsProperty<AppTextStyle>("titleTextStyle", titleTextStyle))
      ..add(DiagnosticsProperty<AppTextStyle>("descriptionTextStyle", descriptionTextStyle))
      ..add(DiagnosticsProperty<AppGapSize>("childrenSpacing", childrenSpacing))
      ..add(DiagnosticsProperty<AppGapSize>("titleSpacing", titleSpacing))
      ..add(DiagnosticsProperty<AppGapSize>("descriptionSpacing", descriptionSpacing))
    ;
  }
}
