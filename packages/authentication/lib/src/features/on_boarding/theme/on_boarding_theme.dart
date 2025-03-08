import 'package:authentication/src/resources/Images_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'on_boarding_properties.dart';

@immutable
class KIWelcomeOnBoardingTheme extends ThemeExtension<KIWelcomeOnBoardingTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The properties of the WelcomeOnBoarding.
  final KIWelcomeOnBoardingProperties properties;

  KIWelcomeOnBoardingTheme({
    required this.tokens,
    KIWelcomeOnBoardingProperties? properties,
  }) : properties = properties ??
            KIWelcomeOnBoardingProperties(
              imagePath1: AuthModuleImages.onBoarding1,
              imagePath2: AuthModuleImages.onBoarding2,
              imagePath3: AuthModuleImages.onBoarding3,
            );

  @override
  KIWelcomeOnBoardingTheme copyWith({
    AppThemeData? tokens,
    KIWelcomeOnBoardingProperties? properties,
  }) {
    return KIWelcomeOnBoardingTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIWelcomeOnBoardingTheme lerp(
      ThemeExtension<KIWelcomeOnBoardingTheme>? other, double t) {
    if (other is! KIWelcomeOnBoardingTheme) return this;

    return KIWelcomeOnBoardingTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIOnBoardingTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIWelcomeOnBoardingProperties>(
          "properties", properties));
  }
}
