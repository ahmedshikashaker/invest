import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../signature.dart';

@immutable
class KISignatureTheme extends ThemeExtension<KISignatureTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the Signature.
  final KISignatureColors colors;

  /// The properties of the Signature.
  final KISignatureProperties properties;

  KISignatureTheme({
    required this.tokens,
    KISignatureColors? colors,
    KISignatureProperties? properties,
  })  : colors = colors ??
            KISignatureColors(
              penColor: tokens.colors.overlay,
              backgroundColor: AppColorsData.white,
              applyColor: tokens.colors.disabled,
              clearColor: tokens.colors.critical,
            ),
        properties = properties ??
            KISignatureProperties(
              borderRadius: tokens.radius.asBorderRadius().medium,
              spacing: tokens.spacing.xs,
              height: 380.rh,
              penStrokeWidth: 1,
              gapSize: AppGapSize.xs,
              padding: AppEdgeInsets.xs(),
              border: Border.all(
                color: tokens.colors.separator,
                width: 1,
              ),
              applyStyle: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                textColorType: AppTextColorType.disable,
              ),
              clearStyle: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                textColorType: AppTextColorType.critical,
              ),
            );

  @override
  KISignatureTheme copyWith({
    AppThemeData? tokens,
    KISignatureColors? colors,
    KISignatureProperties? properties,
  }) {
    return KISignatureTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KISignatureTheme lerp(ThemeExtension<KISignatureTheme>? other, double t) {
    if (other is! KISignatureTheme) return this;

    return KISignatureTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KISignatureTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KISignatureColors>("colors", colors))
      ..add(
          DiagnosticsProperty<KISignatureProperties>("properties", properties));
  }
}
