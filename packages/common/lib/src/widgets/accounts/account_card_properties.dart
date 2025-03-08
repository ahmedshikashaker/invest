import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIAccountCardProperties extends ThemeExtension<KIAccountCardProperties>
    with DiagnosticableTreeMixin {
  final BorderRadiusGeometry borderRadius;

  /// The padding of the Transaction.
  final AppEdgeInsets padding;

  /// The padding of the Transaction.
  final Border border;

  /// The title style of the Transaction.
  final AppTextStyle titleStyle;

  /// The title style of the Transaction.
  final AppTextStyle subTitleStyle;

  /// The title style of the Transaction.
  final int titleMaxLines;


  const KIAccountCardProperties({
    required this.borderRadius,
    required this.padding,
    required this.border,
    required this.titleStyle,
    required this.subTitleStyle,
    required this.titleMaxLines,
  });

  @override
  KIAccountCardProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    AppEdgeInsets? padding,
    Border? border,
    AppTextStyle? tittleStyle,
    AppTextStyle? subTitleStyle,
    int? titleMaxLines,
  }) {
    return KIAccountCardProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      border: border ?? this.border,
      titleStyle: tittleStyle ?? this.titleStyle,
      subTitleStyle: subTitleStyle ?? this.subTitleStyle,
      titleMaxLines: titleMaxLines ?? this.titleMaxLines,
    );
  }

  @override
  KIAccountCardProperties lerp(
    ThemeExtension<KIAccountCardProperties>? other,
    double t,
  ) {
    if (other is! KIAccountCardProperties) return this;

    return KIAccountCardProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      border: Border.lerp(border, other.border, t)!,
      padding: padding,
      titleStyle: titleStyle,
      subTitleStyle: subTitleStyle,
      titleMaxLines: titleMaxLines,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAccountCardProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<Border>("border", border))
      ..add(DiagnosticsProperty<int>("titleMaxLines", titleMaxLines))
      ..add(DiagnosticsProperty<AppTextStyle>("tittleStyle", titleStyle))
      ..add(DiagnosticsProperty<AppTextStyle>("subTitleStyle", subTitleStyle));
  }
}
