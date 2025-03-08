import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/theme/theme.dart';
import 'package:invest_common/src/widgets/app_scaffold/app_scaffold_colors.dart';
import 'package:invest_common/src/widgets/app_scaffold/app_scaffold_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';

@immutable
class KIAppScaffoldTheme extends ThemeExtension<KIAppScaffoldTheme>
    with DiagnosticableTreeMixin {
  final KIThemeToken tokens;

  final KIAppScaffoldColors colors;

  final KIAppScaffoldProperties properties;

  KIAppScaffoldTheme({
    required this.tokens,
    KIAppScaffoldColors? colors,
    KIAppScaffoldProperties? properties,
  })  : colors = colors ??
            KIAppScaffoldColors(
              backgroundColor: tokens.colors.kiLightBackground,
            ),
        properties = properties ??
            KIAppScaffoldProperties(
              overlapAppbarWithbody: tokens.spacing.xl,
              bodyBorderRadius: tokens.radius.asBorderRadius().xlarge.copyWith(
                    bottomLeft: tokens.radius.none,
                    bottomRight: tokens.radius.none,
                  ),
            );

  @override
  KIAppScaffoldTheme copyWith({
    KIThemeToken? tokens,
    KIAppScaffoldColors? colors,
    KIAppScaffoldProperties? properties,
  }) {
    return KIAppScaffoldTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIAppScaffoldTheme lerp(ThemeExtension<KIAppScaffoldTheme>? other, double t) {
    if (other is! KIAppScaffoldTheme) return this;

    return KIAppScaffoldTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIAppScaffoldTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIAppScaffoldColors>("colors", colors))
      ..add(DiagnosticsProperty<KIAppScaffoldProperties>(
          "properties", properties));
  }
}
