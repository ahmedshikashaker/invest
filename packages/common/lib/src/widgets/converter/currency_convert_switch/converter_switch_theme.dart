import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'converter_switch_colors.dart';
import 'converter_switch_properties.dart';

@immutable
class KIConverterSwitchTheme
    extends ThemeExtension<KIConverterSwitchTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Converter Switch.
  final KIConverterSwitchColors colors;

  /// The colors of the Converter Switch.
  final KIConverterSwitchProperties properties;

  KIConverterSwitchTheme({
    required this.tokens,
    KIConverterSwitchColors? colors,
    KIConverterSwitchProperties? properties,
  })  : colors = colors ??
            KIConverterSwitchColors(
              iconColor: tokens.colors.success,
            ),
        properties = properties ??
            KIConverterSwitchProperties(
              iconSize: tokens.spacing.xl,
            );

  @override
  KIConverterSwitchTheme copyWith({
    AppThemeData? tokens,
    KIConverterSwitchColors? colors,
    KIConverterSwitchProperties? properties,
  }) {
    return KIConverterSwitchTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIConverterSwitchTheme lerp(
      ThemeExtension<KIConverterSwitchTheme>? other, double t) {
    if (other is! KIConverterSwitchTheme) return this;

    return KIConverterSwitchTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIConverterFieldTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIConverterSwitchColors>("colors", colors))
      ..add(DiagnosticsProperty<KIConverterSwitchProperties>(
          "properties", properties));
  }
}
