import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KITransactionProperties extends ThemeExtension<KITransactionProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the Transaction.
  final BorderRadiusGeometry borderRadius;

  /// The padding of the Transaction.
  final AppEdgeInsets padding;

  /// The title style of the Transaction.
  final AppTextStyle messageStyle;

  /// The alignment of the status Transaction.
  final MainAxisAlignment mainAxisAlignment;

  /// The spacing between message body and status in Transaction Card.
  final double spacing;

  const KITransactionProperties({
    required this.borderRadius,
    required this.padding,
    required this.messageStyle,
    required this.mainAxisAlignment,
    required this.spacing,
  });

  @override
  KITransactionProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    AppEdgeInsets? padding,
    AppTextStyle? messageStyle,
    MainAxisAlignment? mainAxisAlignment,
    double? spacing,
  }) {
    return KITransactionProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      messageStyle: messageStyle ?? this.messageStyle,
      mainAxisAlignment: mainAxisAlignment ?? this.mainAxisAlignment,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  KITransactionProperties lerp(
    ThemeExtension<KITransactionProperties>? other,
    double t,
  ) {
    if (other is! KITransactionProperties) return this;

    return KITransactionProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      padding: padding,
      messageStyle: messageStyle,
      mainAxisAlignment: mainAxisAlignment,
      spacing: lerpDouble(spacing, other.spacing, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIUploadCardProperties"))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<AppTextStyle>("messageStyle", messageStyle))
      ..add(DiagnosticsProperty<double>("spacing", spacing))
      ..add(DiagnosticsProperty<MainAxisAlignment>(
          "mainAxisAlignment", mainAxisAlignment));
  }
}
