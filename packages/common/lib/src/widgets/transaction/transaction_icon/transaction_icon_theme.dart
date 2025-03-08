import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'transaction_icon_colors.dart';
import 'transaction_icon_properties.dart';

@immutable
class KITransactionIconTheme extends ThemeExtension<KITransactionIconTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Transaction.
  final KITransactionIconColors colors;

  /// The properties of the Transaction.
  final KITransactionIconProperties properties;

  KITransactionIconTheme({
    required this.tokens,
    KITransactionIconColors? colors,
    KITransactionIconProperties? properties,
  })  : colors = colors ??
            KITransactionIconColors(
              iconColor: tokens.colors.success,
              iconBackgroundColor: tokens.colors.background,
              iconRedeemColor: tokens.colors.critical,
              iconSubscribeColor: tokens.colors.success,
            ),
        properties = properties ??
            KITransactionIconProperties(
              iconSize: tokens.spacing.xl,
              padding: AppEdgeInsets.only(right: AppGapSize.m),
            );

  @override
  KITransactionIconTheme copyWith({
    AppThemeData? tokens,
    KITransactionIconColors? colors,
    KITransactionIconProperties? properties,
  }) {
    return KITransactionIconTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KITransactionIconTheme lerp(
      ThemeExtension<KITransactionIconTheme>? other, double t) {
    if (other is! KITransactionIconTheme) return this;

    return KITransactionIconTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KITransactionIconTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KITransactionIconColors>("colors", colors))
      ..add(DiagnosticsProperty<KITransactionIconProperties>(
          "properties", properties));
  }
}
