import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KITransactionAmountColors
    extends ThemeExtension<KITransactionAmountColors>
    with DiagnosticableTreeMixin {
  /// The amountColor of the Transaction status card.
  final Color amountRedeemColor;
  final Color amountSubscribeColor;

  /// The currencyColor of the Transaction status card.
  final Color currencyRedeemColor;
  final Color currencySubscribeColor;

  /// The background Color of the Transaction status card.
  final Color backgroundColor;

  const KITransactionAmountColors({
    required this.amountRedeemColor,
    required this.amountSubscribeColor,
    required this.currencyRedeemColor,
    required this.currencySubscribeColor,
    required this.backgroundColor,
  });

  @override
  KITransactionAmountColors copyWith({
    Color? amountRedeemColor,
    Color? currencyRedeemColor,
    Color? amountSubscribeColor,
    Color? currencySubscribeColor,
    Color? backgroundColor,
  }) {
    return KITransactionAmountColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      amountRedeemColor: amountRedeemColor ?? this.amountRedeemColor,
      currencyRedeemColor: currencyRedeemColor ?? this.currencyRedeemColor,
      amountSubscribeColor: amountSubscribeColor ?? this.amountSubscribeColor,
      currencySubscribeColor:
          currencySubscribeColor ?? this.currencySubscribeColor,
    );
  }

  @override
  KITransactionAmountColors lerp(
      ThemeExtension<KITransactionAmountColors>? other, double t) {
    if (other is! KITransactionAmountColors) return this;

    return KITransactionAmountColors(
      amountRedeemColor:
          colorPremulLerp(amountRedeemColor, other.amountRedeemColor, t)!,
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      currencyRedeemColor:
          colorPremulLerp(currencyRedeemColor, other.currencyRedeemColor, t)!,
      amountSubscribeColor:
          colorPremulLerp(amountSubscribeColor, other.amountSubscribeColor, t)!,
      currencySubscribeColor: colorPremulLerp(
          currencySubscribeColor, other.currencySubscribeColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KITransactionColors"))
      ..add(ColorProperty("backgroundColor", backgroundColor))
      ..add(ColorProperty("currencyColor", currencyRedeemColor))
      ..add(ColorProperty("amountColor", amountRedeemColor))
      ..add(ColorProperty("currencySubscribeColor", currencySubscribeColor))
      ..add(ColorProperty("amountSubscribeColor", amountSubscribeColor));
  }
}
