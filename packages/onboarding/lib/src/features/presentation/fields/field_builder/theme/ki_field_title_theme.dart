import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/theme/ki_field_title_properties.dart';

@immutable
class KiFieldTitleTheme extends ThemeExtension<KiFieldTitleTheme>
    with DiagnosticableTreeMixin {
  final KIThemeToken tokens;
  final KiFieldTitleProperties properties;

  KiFieldTitleTheme({
    required this.tokens,
    KiFieldTitleProperties? properties,
  }) : properties = properties ??
            KiFieldTitleProperties(
              titleTextStyle: AppTextStyle(
                level: AppTextLevel.bodyBold,
                color: tokens.colors.kiTextBodyPrimary,
              ),
              titleSpacing: AppGapSize.s,
            );

  @override
  KiFieldTitleTheme copyWith({
    KIThemeToken? tokens,
    KiFieldTitleProperties? properties,
  }) {
    return KiFieldTitleTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KiFieldTitleTheme lerp(ThemeExtension<KiFieldTitleTheme>? other, double t) {
    if (other is! KiFieldTitleTheme) return this;

    return KiFieldTitleTheme(
      tokens: tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KiFieldTitleTheme"))
      ..add(DiagnosticsProperty<KIThemeToken>("tokens", tokens))
      ..add(DiagnosticsProperty<KiFieldTitleProperties>(
          "properties", properties));
  }
}
