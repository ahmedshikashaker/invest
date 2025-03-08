import 'package:invest_common/src/theme/colors.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/theme/data/effects/effects.dart';
import 'package:kib_design_system/theme/data/typography/typography.dart';
import 'package:flutter/material.dart';

class KIThemeToken extends AppThemeData {
  KIThemeToken({
    required this.complementaryColors,
    required this.colors,
    required super.typography,
    required super.spacing,
    required super.radius,
    required super.effects,
    required super.themeMode,
  }) : super(
          colors: colors,
        );

  final KIAppColorsData colors;
  final KIAppColorsData complementaryColors;

  factory KIThemeToken.regular({required AppTypographyData typography}) => KIThemeToken(
        typography: typography,
        colors: KIAppColorsData.light(),
        complementaryColors: KIAppColorsData.dark(),
        spacing: AppSpacingData.regular(),
        effects: AppEffectsData.regular(),
        radius: AppRadiusData.regular(),
        themeMode: ThemeMode.light,
      );

  @override
  KIThemeToken withColors(AppColorsData colors) {
    return KIThemeToken(
      colors: colors as KIAppColorsData,
      complementaryColors: complementaryColors,
      typography: typography,
      spacing: spacing,
      effects: effects,
      radius: radius,
      themeMode: themeMode,
    );
  }

  KIThemeToken withComplementaryColors(KIAppColorsData complementaryColors) {
    return KIThemeToken(
      colors: colors,
      complementaryColors: complementaryColors,
      typography: typography,
      spacing: spacing,
      effects: effects,
      radius: radius,
      themeMode: themeMode,
    );
  }
}
