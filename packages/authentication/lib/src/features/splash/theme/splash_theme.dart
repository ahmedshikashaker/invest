import 'package:authentication/src/resources/Images_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'splash_properties.dart';

@immutable
class KISplashTheme extends ThemeExtension<KISplashTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Splash.
  final KISplashProperties properties;

  KISplashTheme({
    required this.tokens,
    KISplashProperties? properties,
  }) : properties = properties ??
            KISplashProperties(
              imagePath: AuthModuleImages.splashBackground,
            );

  @override
  KISplashTheme copyWith({
    AppThemeData? tokens,
    KISplashProperties? properties,
  }) {
    return KISplashTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KISplashTheme lerp(ThemeExtension<KISplashTheme>? other, double t) {
    if (other is! KISplashTheme) return this;

    return KISplashTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KISplashTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KISplashProperties>("properties", properties));
  }
}
