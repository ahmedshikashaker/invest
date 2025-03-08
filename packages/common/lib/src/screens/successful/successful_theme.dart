import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/resources/images_helper.dart';
import 'package:invest_common/src/screens/successful/successful_background_images.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'successful_colors.dart';
import 'successful_properties.dart';

@immutable
class KISuccessfulTheme extends ThemeExtension<KISuccessfulTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Info.
  final KISuccessfulColors colors;

  /// The properties of the Info.
  final KISuccessfulProperties properties;

  final KISuccessfulBackgroundImages backgroundImages;

  KISuccessfulTheme(
      {required this.tokens,
      KISuccessfulColors? colors,
      KISuccessfulProperties? properties,
      KISuccessfulBackgroundImages? backgroundImages})
      : colors = colors ??
            KISuccessfulColors(
                gradient: tokens.colors.getGradient(
                    lightGradient: AppColorsData.createGradient(
                        colors: AppColorsData.azureMidtoneGradientColors),
                    darkGradient: AppColorsData.createGradient(colors: [
                      AppColorsData.black.withOpacity(.3),
                      AppColorsData.black.withOpacity(.3)
                    ])),
                backgroundColor: tokens.colors.background),
        backgroundImages = backgroundImages ??
            KISuccessfulBackgroundImages(
                backgroundImage: CommonImages.successLightBackground),
        properties = properties ??
            KISuccessfulProperties(
              headingPadding: AppEdgeInsets.m(),
              buttonPadding: AppEdgeInsets.only(top: AppGapSize.m,bottom: AppGapSize.xxl, left: AppGapSize.m, right:  AppGapSize.m),
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
  KISuccessfulTheme copyWith(
      {AppThemeData? tokens,
      KISuccessfulColors? colors,
      KISuccessfulProperties? properties,
      KISuccessfulBackgroundImages? backgroundImages}) {
    return KISuccessfulTheme(
        tokens: tokens ?? this.tokens,
        colors: colors ?? this.colors,
        properties: properties ?? this.properties,
        backgroundImages: backgroundImages ?? this.backgroundImages);
  }

  @override
  KISuccessfulTheme lerp(ThemeExtension<KISuccessfulTheme>? other, double t) {
    if (other is! KISuccessfulTheme) return this;

    return KISuccessfulTheme(
        tokens: other.tokens,
        colors: colors.lerp(other.colors, t),
        properties: properties.lerp(other.properties, t),
        backgroundImages: backgroundImages);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KICheckboxTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KISuccessfulColors>("colors", colors))
      ..add(
          DiagnosticsProperty<KISuccessfulProperties>("properties", properties))
      ..add(DiagnosticsProperty<KISuccessfulBackgroundImages>(
          'backgroundImages', backgroundImages));
  }
}
