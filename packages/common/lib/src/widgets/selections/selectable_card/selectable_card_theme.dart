import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/selections/selectable_card/selectable_card_colors.dart';
import 'package:invest_common/src/widgets/selections/selectable_card/selectable_card_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KISelectableCardTheme extends ThemeExtension<KISelectableCardTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  final KISelectableCardColors colors;

  final KISelectableCardProperties properties;

  KISelectableCardTheme({
    required this.tokens,
    KISelectableCardColors? colors,
    KISelectableCardProperties? properties,
  })  : colors = colors ??
            KISelectableCardColors(
              backgroundColor: tokens.colors.surface,
              selectedBackgroundColor: tokens.colors.surface,
              boarderColor: tokens.colors.separator,
              selectedBoarderColor: tokens.colors.actionableSecondary,
            ),
        properties = properties ??
            KISelectableCardProperties(
              padding: const AppEdgeInsets.symmetric(
                horizontal: AppGapSize.m,
                vertical: AppGapSize.s,
              ),
              borderRadius: tokens.radius.asBorderRadius().medium,
              borderWidth: 1,
              selectedBorderWidth: 1,
              horizontalGapValue: AppGapSize.m,
              verticalGapForBottomWidgetValue: AppGapSize.m,
              crossAxisAlignment: CrossAxisAlignment.center,
            );

  @override
  KISelectableCardTheme copyWith({
    AppThemeData? tokens,
    KISelectableCardColors? colors,
    KISelectableCardProperties? properties,
  }) {
    return KISelectableCardTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KISelectableCardTheme lerp(
      ThemeExtension<KISelectableCardTheme>? other, double t) {
    if (other is! KISelectableCardTheme) return this;

    return KISelectableCardTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KISelectableCardTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KISelectableCardColors>("colors", colors))
      ..add(DiagnosticsProperty<KISelectableCardProperties>(
          "properties", properties));
  }
}
