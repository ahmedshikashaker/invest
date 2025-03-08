import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/onboarding/onboarding_item/onboarding_item_shadows.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:invest_common/src/widgets/onboarding/onboarding_item/onboarding_item_colors.dart';
import 'package:invest_common/src/widgets/onboarding/onboarding_item/onboarding_item_properties.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIOnboardingItemTheme extends ThemeExtension<KIOnboardingItemTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;
  final KIOnboardingItemColors colors;
  final KIOnboardingItemProperties properties;
  final KIOnboardingItemShadows shadows;

  KIOnboardingItemTheme( {
    required this.tokens,
    KIOnboardingItemShadows? shadows,
    KIOnboardingItemColors? colors,
    KIOnboardingItemProperties? properties,
  })  : colors = colors ??
            KIOnboardingItemColors(backgroundColor: tokens.colors.surface,
                inactiveOverlayColor: tokens.colors.background.withOpacity(0.7)),
  shadows= shadows?? KIOnboardingItemShadows(shadows: [tokens.effects.shadows.shadow200]),

        properties = properties ??
            KIOnboardingItemProperties(
              titleTextStyle: AppTextStyle(
                  level: AppTextLevel.smallMedium,
                  color: tokens.colors.textBodyPrimary),
              statusTextStyle: AppTextStyle(
                  level: AppTextLevel.tinyBold,
                  color: tokens.colors.actionableSecondary),
              sidesPadding: AppEdgeInsets.symmetric(horizontal: AppGapSize.xs, vertical: AppGapSize.m),
              avatarTitleSpace: AppGap.s(),
              borderRadius: tokens.radius.asBorderRadius().regular, titleProgBarSpace: AppGap.xs(), progBarStatTitleSpace: AppGap.xs(), width: 103.rw, height: 158.rh,
            );

  @override
  KIOnboardingItemTheme copyWith({
    AppThemeData? tokens,
    KIOnboardingItemColors? colors,
    KIOnboardingItemProperties? properties,
  }) {
    return KIOnboardingItemTheme(
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
      tokens: tokens ?? this.tokens,
    );
  }

  @override
  KIOnboardingItemTheme lerp(
      covariant ThemeExtension<KIOnboardingItemTheme>? other, double t) {
    if (other is! KIOnboardingItemTheme) return this;

    return KIOnboardingItemTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty<AppThemeData>('tokens', tokens))
      ..add(DiagnosticsProperty<KIOnboardingItemColors>('colors', colors))
      ..add(DiagnosticsProperty<KIOnboardingItemProperties>(
          'properties', properties));
  }
}
