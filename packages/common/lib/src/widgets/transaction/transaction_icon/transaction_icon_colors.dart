import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KITransactionIconColors extends ThemeExtension<KITransactionIconColors>
    with DiagnosticableTreeMixin {
  /// The iconColor of the Transaction status card.
  final Color iconColor;

  /// The iconBackgroundColor of the Transaction status card.
  final Color iconBackgroundColor;

  final Color iconRedeemColor;
  final Color iconSubscribeColor;

  const KITransactionIconColors({
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.iconRedeemColor,
    required this.iconSubscribeColor,
  });

  @override
  KITransactionIconColors copyWith({
    Color? iconColor,
    Color? iconBackgroundColor,
    Color? iconRedeemColor,
    Color? iconSubscribeColor,
  }) {
    return KITransactionIconColors(
      iconColor: iconColor ?? this.iconColor,
      iconBackgroundColor: iconBackgroundColor ?? this.iconBackgroundColor,
      iconRedeemColor: iconRedeemColor ?? this.iconRedeemColor,
      iconSubscribeColor: iconSubscribeColor ?? this.iconSubscribeColor,
    );
  }

  @override
  KITransactionIconColors lerp(
      ThemeExtension<KITransactionIconColors>? other, double t) {
    if (other is! KITransactionIconColors) return this;

    return KITransactionIconColors(
      iconColor: colorPremulLerp(iconColor, other.iconColor, t)!,
      iconBackgroundColor:
          colorPremulLerp(iconBackgroundColor, other.iconBackgroundColor, t)!,
      iconRedeemColor:
          colorPremulLerp(iconRedeemColor, other.iconRedeemColor, t)!,
      iconSubscribeColor:
          colorPremulLerp(iconSubscribeColor, other.iconSubscribeColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KITransactionIconColors"))
      ..add(ColorProperty("iconColor", iconColor))
      ..add(ColorProperty("iconBackgroundColor", iconBackgroundColor))
      ..add(ColorProperty("iconRedeemColor", iconRedeemColor))
      ..add(ColorProperty("iconSubscribeColor", iconSubscribeColor));
  }
}
