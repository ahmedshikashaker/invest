import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/review/review_item/review_item_colors.dart';
import 'package:invest_common/src/widgets/review/review_item/review_item_properties.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';


class KIReviewItemTheme extends ThemeExtension<KIReviewItemTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;
  final KIReviewItemColors colors;
  final KIReviewItemProperties properties;

  KIReviewItemTheme({
    required this.tokens,
    KIReviewItemColors? colors,
    KIReviewItemProperties? properties,
  })
      : colors = colors ?? KIReviewItemColors(
      dividerColor: tokens.colors.separator,
      backgroundColor: Colors.transparent),
        properties = properties ?? KIReviewItemProperties(
          width: double.infinity,
          dividerPadding: AppEdgeInsets.symmetric(vertical: AppGapSize.xs),
          titleTextStyle: AppTextStyle(color: tokens.colors.textBodySecondary,
              level: AppTextLevel.smallRegular),
          valueTextStyle: AppTextStyle(color: tokens.colors.textBodyPrimary,
              level: AppTextLevel.smallRegular),
          mainAxisAlignment: MainAxisAlignment.start,
          padding: AppEdgeInsets.none(), crossAxisAlignment: CrossAxisAlignment.start,
        );


  @override
  KIReviewItemTheme copyWith({
    AppThemeData? tokens,
    KIReviewItemColors? colors,
    KIReviewItemProperties? properties,
  }) {
    return KIReviewItemTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIReviewItemTheme lerp(covariant ThemeExtension<KIReviewItemTheme>? other,
      double t) {
    if (other is! KIReviewItemTheme) return this;

    return KIReviewItemTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder debugProperties) {
    super.debugFillProperties(debugProperties);
    debugProperties..add(
        DiagnosticsProperty<AppThemeData>('tokens', tokens))..add(
        DiagnosticsProperty<KIReviewItemColors>('colors', colors))..add(
        DiagnosticsProperty<KIReviewItemProperties>('properties', properties));
  }

}
