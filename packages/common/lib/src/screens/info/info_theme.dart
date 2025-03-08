import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'info_colors.dart';
import 'info_properties.dart';

@immutable
class KIInfoTheme extends ThemeExtension<KIInfoTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Info.
  final KIInfoColors colors;

  /// The properties of the Info.
  final KIInfoProperties properties;

  KIInfoTheme({
    required this.tokens,
    KIInfoColors? colors,
    KIInfoProperties? properties,
  })  : colors = colors ??
            KIInfoColors(
                gradient: tokens.colors.getGradient(
                    lightGradient: AppColorsData.createGradient(
                        colors: AppColorsData.azureMidtoneGradientColors),
                    darkGradient: AppColorsData.createGradient(colors: [
                      AppColorsData.black.withOpacity(.3),
                      AppColorsData.black.withOpacity(.3)
                    ])),
                backgroundColor: tokens.colors.background),
        properties = properties ??
            KIInfoProperties(
              headingPadding: AppEdgeInsets.m(),
              buttonPadding: AppEdgeInsets.symmetric(vertical: AppGapSize.m),
              titleAlign: TextAlign.center,
              descriptionAlign: TextAlign.center,
              descriptionOverflow: TextOverflow.clip,
              contentPadding: AppEdgeInsets.only(
                  left: AppGapSize.m,
                  right: AppGapSize.m,
                  bottom: AppGapSize.m,
                  top: AppGapSize.xl),
              gapIcon: AppGapSize.l,
              gapTitle: AppGapSize.l,
              gapBody: AppGapSize.x4l,
              titleStyle: AppTextStyle(
                level: AppTextLevel.sublineHeavy,
                color: AppColorsData.white,
              ),
              descriptionStyle: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                color: AppColorsData.white,
              ),
            );

  @override
  KIInfoTheme copyWith({
    AppThemeData? tokens,
    KIInfoColors? colors,
    KIInfoProperties? properties,
  }) {
    return KIInfoTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIInfoTheme lerp(ThemeExtension<KIInfoTheme>? other, double t) {
    if (other is! KIInfoTheme) return this;

    return KIInfoTheme(
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
      ..add(DiagnosticsProperty<KIInfoColors>("colors", colors))
      ..add(DiagnosticsProperty<KIInfoProperties>("properties", properties));
  }
}
