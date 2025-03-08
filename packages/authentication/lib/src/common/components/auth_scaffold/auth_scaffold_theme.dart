import 'package:authentication/src/resources/Images_helper.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';

import 'auth_scaffold_properties.dart';

@immutable
class KIAuthScaffoldTheme extends ThemeExtension<KIAuthScaffoldTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The properties of the AuthScaffold.
  final KIAuthScaffoldProperties properties;

  KIAuthScaffoldTheme({
    required this.tokens,
    KIAuthScaffoldProperties? properties,
  }) : properties = properties ??
            KIAuthScaffoldProperties(
              imagePath: AuthModuleImages.authBackground,
              titleTextStyle: AppTextStyle(
                color: tokens.colors.textReversed,
                level: AppTextLevel.sublineHeavy,
              ),
              subtitleTextStyle: AppTextStyle(
                color: tokens.colors.textReversed,
                level: AppTextLevel.captionRegular,
              ),
            );

  @override
  KIAuthScaffoldTheme copyWith({
    AppThemeData? tokens,
    KIAuthScaffoldProperties? properties,
  }) {
    return KIAuthScaffoldTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIAuthScaffoldTheme lerp(
      ThemeExtension<KIAuthScaffoldTheme>? other, double t) {
    if (other is! KIAuthScaffoldTheme) return this;

    return KIAuthScaffoldTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIAuthScaffoldTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIAuthScaffoldProperties>(
          "properties", properties));
  }
}
