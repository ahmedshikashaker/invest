import 'package:authentication/src/resources/Images_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'login_properties.dart';

@immutable
class KILoginTheme extends ThemeExtension<KILoginTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The properties of the Login.
  final KILoginProperties properties;

  KILoginTheme({
    required this.tokens,
    KILoginProperties? properties,
  }) : properties = properties ??
            KILoginProperties(
              imagePath: AuthModuleImages.authBackground,
            );

  @override
  KILoginTheme copyWith({
    AppThemeData? tokens,
    KILoginProperties? properties,
  }) {
    return KILoginTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KILoginTheme lerp(ThemeExtension<KILoginTheme>? other, double t) {
    if (other is! KILoginTheme) return this;

    return KILoginTheme(
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
      ..add(DiagnosticsProperty<KILoginProperties>("properties", properties));
  }
}
