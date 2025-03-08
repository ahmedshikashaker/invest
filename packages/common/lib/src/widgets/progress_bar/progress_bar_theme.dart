import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/progress_bar/progress_bar_colors.dart';
import 'package:invest_common/src/widgets/progress_bar/progress_bar_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/widgets/base/text.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIProgressBarTheme extends ThemeExtension<KIProgressBarTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  final KIProgressBarColors colors;

  final KIProgressBarProperties properties;

  KIProgressBarTheme({
    required this.tokens,
    KIProgressBarColors? colors,
    KIProgressBarProperties? properties,
  })  : colors = colors ??
            KIProgressBarColors(
              progressColor: AppColorsData.sea,
              backgroundColor: tokens.colors.disabled,
            ),
        properties = properties ??
            KIProgressBarProperties(
              height: tokens.spacing.xs,
              borderRadius: tokens.spacing.xl,
              titleGapSize: AppGapSize.xxs,
              verticalGapSize: AppGapSize.xs,
              titleTextStyle: AppTextStyle(
                color: tokens.colors.textBodySecondary,
                level: AppTextLevel.smallRegular,
              ),
              stepTextStyle: AppTextStyle(
                color: tokens.colors.textBodyPrimary,
                level: AppTextLevel.smallBold,
              ),
            );

  @override
  KIProgressBarTheme copyWith({
    AppThemeData? tokens,
    KIProgressBarColors? colors,
    KIProgressBarProperties? properties,
  }) {
    return KIProgressBarTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIProgressBarTheme lerp(ThemeExtension<KIProgressBarTheme>? other, double t) {
    if (other is! KIProgressBarTheme) return this;

    return KIProgressBarTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIProgressBarTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIProgressBarColors>("colors", colors))
      ..add(DiagnosticsProperty<KIProgressBarProperties>(
          "properties", properties));
  }
}
