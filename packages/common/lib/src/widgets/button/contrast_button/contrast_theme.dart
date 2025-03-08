import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'contrast_colors.dart';

@immutable
class KIContrastButtonTheme extends ThemeExtension<KIContrastButtonTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the ContrastButton.
  final KIContrastButtonColors colors;

  KIContrastButtonTheme({
    required this.tokens,
    KIContrastButtonColors? colors,
  }) : colors = colors ??
            KIContrastButtonColors(
              textButtonColor: tokens.colors.actionableSecondary,
            );

  @override
  KIContrastButtonTheme copyWith({
    AppThemeData? tokens,
    KIContrastButtonColors? colors,
  }) {
    return KIContrastButtonTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
    );
  }

  @override
  KIContrastButtonTheme lerp(
      ThemeExtension<KIContrastButtonTheme>? other, double t) {
    if (other is! KIContrastButtonTheme) return this;

    return KIContrastButtonTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIContrastButtonTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIContrastButtonColors>("colors", colors));
  }
}
