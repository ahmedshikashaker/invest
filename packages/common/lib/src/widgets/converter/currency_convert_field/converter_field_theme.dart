import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'converter_field_colors.dart';
import 'converter_field_properties.dart';

@immutable
class KIConverterFieldTheme extends ThemeExtension<KIConverterFieldTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Converter.
  final KIConverterFieldColors colors;

  /// The colors of the Converter.
  final KIConverterFieldProperties properties;

  KIConverterFieldTheme({
    required this.tokens,
    KIConverterFieldColors? colors,
    KIConverterFieldProperties? properties,
  })  : colors = colors ??
            KIConverterFieldColors(
              amountColor: tokens.colors.textBodyPrimary,
              borderFieldColor: Colors.transparent,
            ),
        properties = properties ??
            KIConverterFieldProperties(
              fieldPadding: AppEdgeInsets.only(
                left: AppGapSize.none,
                right: AppGapSize.m,
                top: AppGapSize.m,
                bottom: AppGapSize.m,
              ),
              currencyStyle: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                textColorType: AppTextColorType.secondary,
              ),
              amountStyle: AppTextStyle(
                level: AppTextLevel.amountMedium,
                textColorType: AppTextColorType.secondary,
              ),
            );

  @override
  KIConverterFieldTheme copyWith({
    AppThemeData? tokens,
    KIConverterFieldColors? colors,
    KIConverterFieldProperties? properties,
  }) {
    return KIConverterFieldTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIConverterFieldTheme lerp(
      ThemeExtension<KIConverterFieldTheme>? other, double t) {
    if (other is! KIConverterFieldTheme) return this;

    return KIConverterFieldTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIConverterFieldTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIConverterFieldColors>("colors", colors))
      ..add(DiagnosticsProperty<KIConverterFieldProperties>(
          "properties", properties));
  }
}
