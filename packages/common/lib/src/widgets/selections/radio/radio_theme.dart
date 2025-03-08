import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/selections/radio/radio_colors.dart';
import 'package:kib_design_system/theme/data/data.dart';

@immutable
class KIRadioTheme extends ThemeExtension<KIRadioTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Checkbox.
  final KIRadioColors colors;

  KIRadioTheme({
    required this.tokens,
    KIRadioColors? colors,
  }) : colors = colors ??
            KIRadioColors(
              activeFillColor: tokens.colors.actionableSecondary,
              inactiveBorderColor: tokens.colors.separator,
              inactiveBackgroundColor: tokens.colors.background,
            );

  @override
  KIRadioTheme copyWith({
    AppThemeData? tokens,
    KIRadioColors? colors,
  }) {
    return KIRadioTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
    );
  }

  @override
  KIRadioTheme lerp(ThemeExtension<KIRadioTheme>? other, double t) {
    if (other is! KIRadioTheme) return this;

    return KIRadioTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIRadioTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIRadioColors>("colors", colors));
  }
}
