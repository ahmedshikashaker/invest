import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'account_card_icon_colors.dart';
import 'account_card_icon_properties.dart';

@immutable
class KIAccountIconTheme extends ThemeExtension<KIAccountIconTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Account.
  final KIAccountIconColors colors;

  /// The properties of the Account.
  final KIAccountIconProperties properties;

  KIAccountIconTheme({
    required this.tokens,
    KIAccountIconColors? colors,
    KIAccountIconProperties? properties,
  })  : colors = colors ??
            KIAccountIconColors(
              iconColor: tokens.colors.actionableSecondary,
              iconBackgroundColor: tokens.colors.background,
            ),
        properties = properties ??
            KIAccountIconProperties(
              iconSize: tokens.spacing.xl,
            );

  @override
  KIAccountIconTheme copyWith({
    AppThemeData? tokens,
    KIAccountIconColors? colors,
    KIAccountIconProperties? properties,
  }) {
    return KIAccountIconTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIAccountIconTheme lerp(ThemeExtension<KIAccountIconTheme>? other, double t) {
    if (other is! KIAccountIconTheme) return this;

    return KIAccountIconTheme(
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
      ..add(DiagnosticsProperty<KIAccountIconColors>("colors", colors))
      ..add(DiagnosticsProperty<KIAccountIconProperties>(
          "properties", properties));
  }
}
