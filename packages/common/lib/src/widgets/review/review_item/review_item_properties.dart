import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KIReviewItemProperties extends ThemeExtension<KIReviewItemProperties>
    with DiagnosticableTreeMixin {
  final AppEdgeInsets dividerPadding;
  final AppTextStyle titleTextStyle;
  final AppTextStyle valueTextStyle;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final AppEdgeInsets padding;
  final double width;

  const KIReviewItemProperties(
      {required this.dividerPadding,
      required this.titleTextStyle,
      required this.valueTextStyle,
      required this.mainAxisAlignment,
      required this.padding,
      required this.crossAxisAlignment,
      required this.width
      });

  @override
  KIReviewItemProperties copyWith({
    AppEdgeInsets? dividerPadding,
    AppTextStyle? titleTextStyle,
    AppTextStyle? valueTextStyle,
    MainAxisAlignment? mainAxisAlignment,
    CrossAxisAlignment? crossAxisAlignment,
    AppEdgeInsets? padding,
    double? width,
  }) {
    return KIReviewItemProperties(
        dividerPadding: dividerPadding ?? this.dividerPadding,
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        valueTextStyle: valueTextStyle ?? this.valueTextStyle,
        mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
        padding: padding ?? this.padding,
        crossAxisAlignment: crossAxisAlignment ?? this.crossAxisAlignment,
        width: width?? this.width);
  }

  @override
  KIReviewItemProperties lerp(
      covariant ThemeExtension<KIReviewItemProperties>? other, double t) {
    if (other is! KIReviewItemProperties) return this;

    return KIReviewItemProperties(
      dividerPadding: dividerPadding,
      titleTextStyle: titleTextStyle,
      valueTextStyle: valueTextStyle,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      padding: padding, width: width,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<AppTextStyle>('valueTextStyle', valueTextStyle))
      ..add(DiagnosticsProperty<AppTextStyle>('titleTextStyle', titleTextStyle))
      ..add(
          DiagnosticsProperty<AppEdgeInsets>('dividerPadding', dividerPadding))
      ..add(EnumProperty<MainAxisAlignment>(
          'mainAxisAlignment', mainAxisAlignment))
      ..add(DiagnosticsProperty<AppEdgeInsets>('padding', padding))
      ..add(EnumProperty<CrossAxisAlignment?>(
          'crossAxisAlignment', crossAxisAlignment))
          ..add(DoubleProperty('width', width));
  }
}
