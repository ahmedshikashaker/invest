import 'package:authentication/src/resources/Images_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'landing_properties.dart';

@immutable
class KILandingTheme extends ThemeExtension<KILandingTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The properties of the Landing.
  final KILandingProperties properties;

  KILandingTheme({
    required this.tokens,
    KILandingProperties? properties,
  }) : properties = properties ??
            KILandingProperties(
              imagePath: AuthModuleImages.authBackground,
            );

  @override
  KILandingTheme copyWith({
    AppThemeData? tokens,
    KILandingProperties? properties,
  }) {
    return KILandingTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KILandingTheme lerp(ThemeExtension<KILandingTheme>? other, double t) {
    if (other is! KILandingTheme) return this;

    return KILandingTheme(
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
      ..add(DiagnosticsProperty<KILandingProperties>("properties", properties));
  }
}
