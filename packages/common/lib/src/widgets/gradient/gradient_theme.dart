import 'package:invest_common/src/widgets/gradient/gradient_colors.dart';
import 'package:invest_common/src/widgets/gradient/gradient_properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_design_system/theme/data/data.dart';

@immutable
class KIGradientTheme extends ThemeExtension<KIGradientTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;
  final KIGradientColors colors;
  final KIGradientProperties properties;

  KIGradientTheme({
    required this.tokens,
    KIGradientColors? colors,
    KIGradientProperties? properties,
  })  : colors = colors ??
            KIGradientColors(
                primaryColor: tokens.colors.actionablePrimary,
                secondaryColor: tokens.colors.actionableSecondary),
        properties = properties ??
            KIGradientProperties(
              blendMode: BlendMode.srcIn,
            );

  @override
  KIGradientTheme copyWith({
    AppThemeData? tokens,
    KIGradientColors? colors,
    KIGradientProperties? properties,
  }) {
    return KIGradientTheme(
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  KIGradientTheme lerp(
      covariant ThemeExtension<KIGradientTheme>? other, double t) {
    if (other is! KIGradientTheme) return this;
    return KIGradientTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder debugProperties) {
    super.debugFillProperties(debugProperties);
    debugProperties
      ..add(DiagnosticsProperty<AppThemeData>('tokens', tokens))
      ..add(DiagnosticsProperty<KIGradientColors>('colors', colors))
      ..add(
          DiagnosticsProperty<KIGradientProperties>('properties', properties));
  }
}
