import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/selections/checkbox/checkbox_colors.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KICheckboxTheme extends ThemeExtension<KICheckboxTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Checkbox.
  final KICheckboxColors colors;

  KICheckboxTheme({
    required this.tokens,
    KICheckboxColors? colors,
  }) : colors = colors ??
            KICheckboxColors(
              activeFillColor: tokens.colors.actionableSecondary,
              unactiveFillColor: tokens.colors.background,
              activeIconColor: Colors.white,
              unActiveIconColor: Colors.transparent,
            );

  @override
  KICheckboxTheme copyWith({
    AppThemeData? tokens,
    KICheckboxColors? colors,
  }) {
    return KICheckboxTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
    );
  }

  @override
  KICheckboxTheme lerp(ThemeExtension<KICheckboxTheme>? other, double t) {
    if (other is! KICheckboxTheme) return this;

    return KICheckboxTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KICheckboxTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KICheckboxColors>("colors", colors));
  }
}
