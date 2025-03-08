import 'package:flutter/material.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/theme/ki_field_title_theme.dart';
import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_theme.dart';
import 'package:invest_common/common.dart';

extension KIAuthThemeExtension on BuildContext {
  KIOnBoardingTheme get _theme =>
      Theme.of(this).extension<KIOnBoardingTheme>()!;

  KISectionGroupTheme get kiSectionGroupTheme => _theme.kiSectionGroupTheme;

  KiFieldTitleTheme get kiFieldTitleTheme => _theme.kiFieldTitleTheme;
}

class KIOnBoardingTheme extends ThemeExtension<KIOnBoardingTheme> {
  KIThemeToken tokens;
  KISectionGroupTheme kiSectionGroupTheme;
  KiFieldTitleTheme kiFieldTitleTheme;

  KIOnBoardingTheme({
    required this.tokens,
    KISectionGroupTheme? kiSectionGroupTheme,
    KiFieldTitleTheme? kiFieldTitleTheme,
  })  : kiSectionGroupTheme = kiSectionGroupTheme ??
            KISectionGroupTheme(
              tokens: tokens,
            ),
        kiFieldTitleTheme =
            kiFieldTitleTheme ?? KiFieldTitleTheme(tokens: tokens);

  @override
  KIOnBoardingTheme copyWith({
    KIThemeToken? tokens,
    KISectionGroupTheme? kiSectionGroupTheme,
    KiFieldTitleTheme? kiFieldTitleTheme,
  }) {
    return KIOnBoardingTheme(
        tokens: tokens ?? this.tokens,
        kiSectionGroupTheme: kiSectionGroupTheme ?? this.kiSectionGroupTheme,
        kiFieldTitleTheme: kiFieldTitleTheme ?? this.kiFieldTitleTheme);
  }

  @override
  ThemeExtension<KIOnBoardingTheme> lerp(
      covariant ThemeExtension<KIOnBoardingTheme>? other, double t) {
    if (other is! KIOnBoardingTheme) return this;

    return KIOnBoardingTheme(
      tokens: other.tokens,
      kiSectionGroupTheme:
          kiSectionGroupTheme.lerp(other.kiSectionGroupTheme, t),
      kiFieldTitleTheme: kiFieldTitleTheme.lerp(other.kiFieldTitleTheme, t),
    );
  }
}
