import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIWidgetsGroupProperties extends ThemeExtension<KIWidgetsGroupProperties>
    with DiagnosticableTreeMixin {
  final AppEdgeInsets padding;

  final AppGapSize? horizontalGapValue;
  final AppGapSize? verticalGapValue;
  final CrossAxisAlignment? crossAxisAlignment;

  const KIWidgetsGroupProperties({
    required this.padding,
    this.horizontalGapValue,
    this.verticalGapValue,
    this.crossAxisAlignment,
  });

  @override
  KIWidgetsGroupProperties copyWith({
    AppEdgeInsets? padding,
    double? borderWidth,
    double? selectedBorderWidth,
    AppGapSize? horizontalGapValue,
    AppGapSize? verticalGapForBottomWidgetValue,
    CrossAxisAlignment? crossAxisAlignment,
  }) {
    return KIWidgetsGroupProperties(
      padding: padding ?? this.padding,
      horizontalGapValue: horizontalGapValue ?? this.horizontalGapValue,
      verticalGapValue: verticalGapValue ?? this.verticalGapValue,
      crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
    );
  }

  @override
  KIWidgetsGroupProperties lerp(
      ThemeExtension<KIWidgetsGroupProperties>? other, double t) {
    if (other is! KIWidgetsGroupProperties) return this;

    return KIWidgetsGroupProperties(
      padding: padding,
      horizontalGapValue: horizontalGapValue,
      verticalGapValue: verticalGapValue,
      crossAxisAlignment: crossAxisAlignment,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIWidgetsGroupProperties"))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<AppGapSize>(
          "horizontalGapValue", horizontalGapValue))
      ..add(
          DiagnosticsProperty<AppGapSize>("verticalGapValue", verticalGapValue))
      ..add(DiagnosticsProperty<CrossAxisAlignment>(
          "crossAxisAlignment", crossAxisAlignment));
  }
}
