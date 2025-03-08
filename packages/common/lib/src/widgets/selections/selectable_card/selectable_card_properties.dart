import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KISelectableCardProperties
    extends ThemeExtension<KISelectableCardProperties>
    with DiagnosticableTreeMixin {
  final AppEdgeInsets padding;

  final BorderRadiusGeometry borderRadius;

  final double borderWidth;

  final double selectedBorderWidth;

  final AppGapSize horizontalGapValue;

  final AppGapSize verticalGapForBottomWidgetValue;

  final CrossAxisAlignment crossAxisAlignment;

  const KISelectableCardProperties({
    required this.padding,
    required this.borderRadius,
    required this.borderWidth,
    required this.selectedBorderWidth,
    required this.horizontalGapValue,
    required this.verticalGapForBottomWidgetValue,
    required this.crossAxisAlignment,
  });

  @override
  KISelectableCardProperties copyWith({
    AppEdgeInsets? padding,
    BorderRadiusGeometry? borderRadius,
    double? borderWidth,
    double? selectedBorderWidth,
    AppGapSize? horizontalGapValue,
    AppGapSize? verticalGapForBottomWidgetValue,
    CrossAxisAlignment? crossAxisAlignment,
  }) {
    return KISelectableCardProperties(
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
      borderWidth: borderWidth ?? this.borderWidth,
      selectedBorderWidth: selectedBorderWidth ?? this.selectedBorderWidth,
      horizontalGapValue: horizontalGapValue ?? this.horizontalGapValue,
      verticalGapForBottomWidgetValue: verticalGapForBottomWidgetValue ??
          this.verticalGapForBottomWidgetValue,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
    );
  }

  @override
  KISelectableCardProperties lerp(
      ThemeExtension<KISelectableCardProperties>? other, double t) {
    if (other is! KISelectableCardProperties) return this;

    return KISelectableCardProperties(
      padding: padding,
      borderRadius: borderRadius,
      borderWidth: lerpDouble(borderWidth, other.borderWidth, t)!,
      selectedBorderWidth:
          lerpDouble(selectedBorderWidth, other.selectedBorderWidth, t)!,
      verticalGapForBottomWidgetValue: verticalGapForBottomWidgetValue,
      horizontalGapValue: horizontalGapValue,
      crossAxisAlignment: crossAxisAlignment,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KISelectableCardProperties"))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<double>("borderWidth", borderWidth))
      ..add(DiagnosticsProperty<double>(
          "selectedBorderWidth", selectedBorderWidth))
      ..add(DiagnosticsProperty<AppGapSize>(
          "horizontalGapValue", horizontalGapValue))
      ..add(DiagnosticsProperty<AppGapSize>(
          "verticalGapForBottomWidgetValue", verticalGapForBottomWidgetValue))
      ..add(DiagnosticsProperty<CrossAxisAlignment>(
          "crossAxisAlignment", crossAxisAlignment));
  }
}
