import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KITransactionAmountProperties
    extends ThemeExtension<KITransactionAmountProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the Transaction.
  final BorderRadiusGeometry borderRadius;

  /// The padding of the Transaction.
  final AppEdgeInsets padding;

  /// The unitCurrency style of the Transaction.
  final AppTextStyle currencyStyle;

  /// The unitValue style of the Transaction.
  final AppTextStyle amountValueStyle;

  const KITransactionAmountProperties({
    required this.borderRadius,
    required this.padding,
    required this.currencyStyle,
    required this.amountValueStyle,
  });

  @override
  KITransactionAmountProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    AppEdgeInsets? padding,
    AppTextStyle? unitCurrencyStyle,
    AppTextStyle? unitValueStyle,
  }) {
    return KITransactionAmountProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      padding: padding ?? this.padding,
      currencyStyle: unitCurrencyStyle ?? this.currencyStyle,
      amountValueStyle: unitValueStyle ?? this.amountValueStyle,
    );
  }

  @override
  KITransactionAmountProperties lerp(
    ThemeExtension<KITransactionAmountProperties>? other,
    double t,
  ) {
    if (other is! KITransactionAmountProperties) return this;

    return KITransactionAmountProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      padding: padding,
      currencyStyle: currencyStyle,
      amountValueStyle: amountValueStyle,
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
      ..add(
          DiagnosticsProperty<AppTextStyle>("unitCurrencyStyle", currencyStyle))
      ..add(DiagnosticsProperty<AppTextStyle>(
          "unitValueStyle", amountValueStyle));
  }
}
