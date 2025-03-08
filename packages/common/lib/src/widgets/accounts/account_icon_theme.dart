import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'account.dart';

@immutable
class KIAccountCardTheme extends ThemeExtension<KIAccountCardTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Transaction.
  final KIAccountCardColors colors;

  /// The properties of the Transaction.
  final KIAccountCardProperties properties;

  KIAccountCardTheme({
    required this.tokens,
    KIAccountCardColors? colors,
    KIAccountCardProperties? properties,
  })  : colors = colors ??
            KIAccountCardColors(
              backgroundColor: tokens.colors.surface,
            ),
        properties = properties ??
            KIAccountCardProperties(
              borderRadius: tokens.radius.asBorderRadius().medium,
              padding: AppEdgeInsets.m(),
              titleMaxLines: 2,
              border: Border.all(color: AppColorsData.azureLight100),
              titleStyle: AppTextStyle(
                level: AppTextLevel.bodyMedium,
                textColorType: AppTextColorType.primary,
              ),
              subTitleStyle: AppTextStyle(
                level: AppTextLevel.smallBold,
                textColorType: AppTextColorType.secondary,
              ),
            );

  @override
  KIAccountCardTheme copyWith({
    AppThemeData? tokens,
    KIAccountCardColors? colors,
    KIAccountCardProperties? properties,
  }) {
    return KIAccountCardTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIAccountCardTheme lerp(ThemeExtension<KIAccountCardTheme>? other, double t) {
    if (other is! KIAccountCardTheme) return this;

    return KIAccountCardTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIAccountCardTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIAccountCardColors>("colors", colors))
      ..add(DiagnosticsProperty<KIAccountCardProperties>(
          "properties", properties));
  }
}
