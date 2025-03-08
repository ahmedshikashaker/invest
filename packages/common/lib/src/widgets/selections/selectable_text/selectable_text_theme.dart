import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/selections/selectable_text/selectable_text_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KISelectableTextTheme extends ThemeExtension<KISelectableTextTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  final KISelectableTextProperties properties;

  KISelectableTextTheme({
    required this.tokens,
    KISelectableTextProperties? properties,
  }) : properties = properties ??
            KISelectableTextProperties(
              style: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                color: tokens.colors.textBodyPrimary,
              ),
              selectedStyle: AppTextStyle(
                level: AppTextLevel.bodyRegular,
                color: tokens.colors.actionableSecondary,
              ),
            );

  @override
  KISelectableTextTheme copyWith({
    AppThemeData? tokens,
    KISelectableTextProperties? properties,
  }) {
    return KISelectableTextTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KISelectableTextTheme lerp(
      ThemeExtension<KISelectableTextTheme>? other, double t) {
    if (other is! KISelectableTextTheme) return this;

    return KISelectableTextTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KISelectableTextTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KISelectableTextProperties>(
          "properties", properties));
  }
}
