import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'transaction_amount_colors.dart';
import 'transaction_amount_properties.dart';

@immutable
class KITransactionAmountTheme extends ThemeExtension<KITransactionAmountTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Transaction.
  final KITransactionAmountColors colors;

  /// The properties of the Transaction.
  final KITransactionAmountProperties properties;

  KITransactionAmountTheme({
    required this.tokens,
    KITransactionAmountColors? colors,
    KITransactionAmountProperties? properties,
  })  : colors = colors ??
            KITransactionAmountColors(
              amountRedeemColor: tokens.colors.critical,
              currencyRedeemColor: tokens.colors.critical,
              amountSubscribeColor: tokens.colors.success,
              currencySubscribeColor: tokens.colors.success,
              backgroundColor: tokens.colors.background,
            ),
        properties = properties ??
            KITransactionAmountProperties(
              borderRadius: tokens.radius.asBorderRadius().small,
              padding: AppEdgeInsets.symmetric(
                  horizontal: AppGapSize.xs, vertical: AppGapSize.xxs),
              currencyStyle: AppTextStyle(
                level: AppTextLevel.smallRegular,
                textColorType: AppTextColorType.active,
              ),
              amountValueStyle: AppTextStyle(
                level: AppTextLevel.smallBold,
                textColorType: AppTextColorType.active,
              ),
            );

  @override
  KITransactionAmountTheme copyWith({
    AppThemeData? tokens,
    KITransactionAmountColors? colors,
    KITransactionAmountProperties? properties,
  }) {
    return KITransactionAmountTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KITransactionAmountTheme lerp(
      ThemeExtension<KITransactionAmountTheme>? other, double t) {
    if (other is! KITransactionAmountTheme) return this;

    return KITransactionAmountTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KITransactionTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KITransactionAmountColors>("colors", colors))
      ..add(DiagnosticsProperty<KITransactionAmountProperties>(
          "properties", properties));
  }
}
