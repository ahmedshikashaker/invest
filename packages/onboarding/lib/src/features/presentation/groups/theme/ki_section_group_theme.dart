import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_colors.dart';
import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_properties.dart';

@immutable
class KISectionGroupTheme extends ThemeExtension<KISectionGroupTheme>
    with DiagnosticableTreeMixin {
  final KIThemeToken tokens;
  final KISectionGroupColors colors;
  final KISectionGroupProperties properties;

  KISectionGroupTheme({
    required this.tokens,
    KISectionGroupColors? colors,
    KISectionGroupProperties? properties,
  })  : colors = colors ??
            KISectionGroupColors(
              titleTextColor: tokens.colors.kiTextBodyPrimary,
              errorTextColor: tokens.colors.critical,

            ),
        properties = properties ??
            KISectionGroupProperties(
              padding: const AppEdgeInsets.only(
                  bottom: AppGapSize.xs),
              borderWidth: 1,
              titleTextStyle: AppTextStyle(
                color: tokens.colors.textHeading,
                level: AppTextLevel.bodyBold,
              ),
              descriptionTextStyle: AppTextStyle(
                color: tokens.colors.textBodySecondary,
                level: AppTextLevel.smallRegular,
              ),
              childrenSpacing: AppGapSize.s,
              titleSpacing: AppGapSize.s,
              descriptionSpacing: AppGapSize.s,
            );

  @override
  KISectionGroupTheme copyWith({
    KIThemeToken? tokens,
    KISectionGroupColors? colors,
    KISectionGroupProperties? properties,
  }) {
    return KISectionGroupTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KISectionGroupTheme lerp(
      ThemeExtension<KISectionGroupTheme>? other, double t) {
    if (other is! KISectionGroupTheme) return this;

    return KISectionGroupTheme(
      tokens: tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIFieldGroupTheme"))
      ..add(DiagnosticsProperty<KIThemeToken>("tokens", tokens))
      ..add(DiagnosticsProperty<KISectionGroupColors>("colors", colors))
      ..add(DiagnosticsProperty<KISectionGroupProperties>(
          "properties", properties));
  }
}
