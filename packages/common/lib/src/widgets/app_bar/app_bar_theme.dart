import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'app_bar_properties.dart';

@immutable
class KIAppBarTheme extends ThemeExtension<KIAppBarTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  final KIAppBarProperties properties;

  KIAppBarTheme({
    required this.tokens,
    KIAppBarProperties? properties,
  }) : properties = properties ??
            KIAppBarProperties(
              backgroundImagePath: 'assets/images/background.png',
            );

  @override
  KIAppBarTheme copyWith({
    AppThemeData? tokens,
    KIAppBarProperties? properties,
  }) {
    return KIAppBarTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIAppBarTheme lerp(ThemeExtension<KIAppBarTheme>? other, double t) {
    if (other is! KIAppBarTheme) return this;

    return KIAppBarTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIAppScaffoldTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIAppBarProperties>("properties", properties));
  }
}
