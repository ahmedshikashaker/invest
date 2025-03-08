import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'converter_card_colors.dart';
import 'converter_card_properties.dart';

@immutable
class KIConverterTheme extends ThemeExtension<KIConverterTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Converter.
  final KIConverterColors colors;

  /// The colors of the Converter.
  final KIConverterProperties properties;

  KIConverterTheme({
    required this.tokens,
    KIConverterColors? colors,
    KIConverterProperties? properties,
  })  : colors = colors ??
            KIConverterColors(
              dividerColor: tokens.colors.separator,
              backgroundColor: tokens.colors.surface,
            ),
        properties = properties ??
            KIConverterProperties(
              borderRadius: tokens.radius.asBorderRadius().regular,
              gapSize: AppGapSize.xs,
            );

  @override
  KIConverterTheme copyWith({
    AppThemeData? tokens,
    KIConverterColors? colors,
    KIConverterProperties? properties,
  }) {
    return KIConverterTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIConverterTheme lerp(ThemeExtension<KIConverterTheme>? other, double t) {
    if (other is! KIConverterTheme) return this;

    return KIConverterTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KICheckboxTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIConverterColors>("colors", colors))
      ..add(
          DiagnosticsProperty<KIConverterProperties>("properties", properties));
  }
}
