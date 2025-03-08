import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'upload_card_colors.dart';
import 'upload_card_properties.dart';

@immutable
class KIUploadCardTheme extends ThemeExtension<KIUploadCardTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  /// The colors of the UploadCard.
  final KIUploadCardColors colors;

  /// The properties of the UploadCard.
  final KIUploadCardProperties properties;

  KIUploadCardTheme({
    required this.tokens,
    KIUploadCardColors? colors,
    KIUploadCardProperties? properties,
  })  : colors = colors ??
            KIUploadCardColors(
              backgroundColor: tokens.colors.surface,
              iconColor: tokens.colors.actionablePrimary,
              fileUploadColor: tokens.colors.background,
            ),
        properties = properties ??
            KIUploadCardProperties(
              borderRadius: tokens.radius.asBorderRadius().regular,
              // border: Border.all(width: 2.w, color: tokens.colors.background),
              cardBorder: Border.all(width: 2.w, color: tokens.colors.background),
              iconSizeValue: tokens.spacing.xl,
              padding: AppEdgeInsets.all(AppGapSize.l),
              titleStyle: AppTextStyle(
                level: AppTextLevel.captionBold,
                style: TextStyle(fontSize: 14.rSp),
                textColorType: AppTextColorType.secondary,
              ),
              descriptionStyle: AppTextStyle(
                level: AppTextLevel.captionRegular,
                style: TextStyle(fontSize: 14.rSp),
                textColorType: AppTextColorType.secondary,
              ),
              showCloseIcon: true,
              spacing: tokens.spacing.xxs,
              sectionPadding: AppEdgeInsets.all(AppGapSize.xs),
              uploadCardPadding: AppEdgeInsets.none(),
              cardPadding: AppEdgeInsets.m(),
              filePadding: AppEdgeInsets.symmetric(
                horizontal: AppGapSize.s,
                vertical: AppGapSize.xs,
              ),
            );

  @override
  KIUploadCardTheme copyWith({
    AppThemeData? tokens,
    KIUploadCardColors? colors,
  }) {
    return KIUploadCardTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
    );
  }

  @override
  KIUploadCardTheme lerp(ThemeExtension<KIUploadCardTheme>? other, double t) {
    if (other is! KIUploadCardTheme) return this;

    return KIUploadCardTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIUploadCardTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIUploadCardColors>("colors", colors));
  }
}
