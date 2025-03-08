import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../transaction.dart';

@immutable
class KITransactionTheme extends ThemeExtension<KITransactionTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Transaction.
  final KITransactionColors colors;

  /// The properties of the Transaction.
  final KITransactionProperties properties;

  KITransactionTheme({
    required this.tokens,
    KITransactionColors? colors,
    KITransactionProperties? properties,
  })  : colors = colors ??
            KITransactionColors(
              backgroundColor: tokens.colors.surface,
            ),
        properties = properties ??
            KITransactionProperties(
              borderRadius: tokens.radius.asBorderRadius().regular,
              padding: AppEdgeInsets.m(),
              messageStyle: AppTextStyle(
                level: AppTextLevel.tinyMedium,
                textColorType: AppTextColorType.primary,
              ),
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: tokens.spacing.none,
            );

  @override
  KITransactionTheme copyWith({
    AppThemeData? tokens,
    KITransactionColors? colors,
    KITransactionProperties? properties,
  }) {
    return KITransactionTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KITransactionTheme lerp(ThemeExtension<KITransactionTheme>? other, double t) {
    if (other is! KITransactionTheme) return this;

    return KITransactionTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KITransactionTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KITransactionColors>("colors", colors))
      ..add(DiagnosticsProperty<KITransactionProperties>(
          "properties", properties));
  }
}
