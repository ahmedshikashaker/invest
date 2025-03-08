import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIInfoProperties extends ThemeExtension<KIInfoProperties>
    with DiagnosticableTreeMixin {
  /// The padding around heading in the Info screen.
  final AppEdgeInsets headingPadding;

  /// The padding around button in the Info screen.
  final AppEdgeInsets buttonPadding;

  /// The gap Heading between heading and icon of the Info screen.
  final AppEdgeInsets contentPadding;

  /// The gap Title between title and body of the Info screen.
  final AppGapSize gapTitle;

  /// The gap Title between icon and title of the Info screen.
  final AppGapSize gapIcon;

  /// The gap Body between body and button of the Info screen.
  final AppGapSize gapBody;

  /// The title style of the Info button.
  final AppTextStyle titleStyle;

  /// The description style of the Info button.
  final AppTextStyle descriptionStyle;

  /// The title Align of the Info button.
  final TextAlign titleAlign;

  /// The description Align of the Info button.
  final TextAlign descriptionAlign;

  /// The description Align of the Info button.
  final TextOverflow descriptionOverflow;

  KIInfoProperties({
    required this.headingPadding,
    required this.buttonPadding,
    required this.contentPadding,
    required this.gapIcon,
    required this.gapTitle,
    required this.gapBody,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.titleAlign,
    required this.descriptionAlign,
    required this.descriptionOverflow,
  });

  @override
  KIInfoProperties copyWith({
    AppEdgeInsets? headingPadding,
    AppEdgeInsets? buttonPadding,
    AppEdgeInsets? contentPadding,
    AppGapSize? gapIcon,
    AppGapSize? gapTitle,
    AppGapSize? gapBody,
    AppTextStyle? titleStyle,
    AppTextStyle? descriptionStyle,
    TextAlign? titleAlign,
    TextAlign? descriptionAlign,
    TextOverflow? overflow,
  }) {
    return KIInfoProperties(
      headingPadding: headingPadding ?? this.headingPadding,
      buttonPadding: buttonPadding ?? this.buttonPadding,
      contentPadding: contentPadding ?? this.contentPadding,
      gapIcon: gapIcon ?? this.gapIcon,
      gapTitle: gapTitle ?? this.gapTitle,
      gapBody: gapBody ?? this.gapBody,
      titleStyle: titleStyle ?? this.titleStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      titleAlign: titleAlign ?? this.titleAlign,
      descriptionAlign: descriptionAlign ?? this.descriptionAlign,
      descriptionOverflow: overflow ?? this.descriptionOverflow,
    );
  }

  @override
  KIInfoProperties lerp(ThemeExtension<KIInfoProperties>? other, double t) {
    if (other is! KIInfoProperties) return this;

    return KIInfoProperties(
      headingPadding: headingPadding,
      buttonPadding: buttonPadding,
      contentPadding: contentPadding,
      gapIcon: gapIcon,
      gapTitle: gapTitle,
      gapBody: gapBody,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      titleAlign: titleAlign,
      descriptionAlign: descriptionAlign,
      descriptionOverflow: descriptionOverflow,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIInfoProperties"))
      ..add(
          DiagnosticsProperty<AppEdgeInsets>("headingPadding", headingPadding))
      ..add(DiagnosticsProperty<AppEdgeInsets>("buttonPadding", buttonPadding))
      ..add(
          DiagnosticsProperty<AppEdgeInsets>("contentPadding", contentPadding))
      ..add(DiagnosticsProperty<AppGapSize>("gapIcon", gapIcon))
      ..add(DiagnosticsProperty<AppGapSize>("gapTitle", gapTitle))
      ..add(DiagnosticsProperty<AppGapSize>("gapBody", gapBody))
      ..add(DiagnosticsProperty<TextAlign>("titleAlign", titleAlign))
      ..add(
          DiagnosticsProperty<TextAlign>("descriptionAlign", descriptionAlign))
      ..add(DiagnosticsProperty<AppTextStyle>("titleStyle", titleStyle))
      ..add(DiagnosticsProperty<TextOverflow>("overflow", descriptionOverflow))
      ..add(DiagnosticsProperty<AppTextStyle>(
          "descriptionStyle", descriptionStyle));
  }
}
