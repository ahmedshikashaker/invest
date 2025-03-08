import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIUploadCardProperties extends ThemeExtension<KIUploadCardProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the UploadCard.
  final BorderRadiusGeometry borderRadius;

  /// The border  of the UploadCard.
  final Border? fileBorder;

  /// The card border  of the UploadCard.
  final Border? cardBorder;

  /// The size value of the UploadCard icon.
  final double iconSizeValue;

  /// The padding of the UploadCard.
  final AppEdgeInsets padding;

  /// The title style of the UploadCard.
  final AppTextStyle titleStyle;

  /// The description style of the UploadCard.
  final AppTextStyle descriptionStyle;

  /// The showCloseIcon to allow showing close icon behind file of the UploadCard
  final bool showCloseIcon;

  /// The uploadCardPadding is the Padding between card details and its border of the UploadCard
  final AppEdgeInsets uploadCardPadding;

  /// The selectionPadding is the Padding between file and its border of the UploadCard
  final AppEdgeInsets sectionPadding;

  /// The cardPadding is the Padding between content and its border of the UploadCard
  final AppEdgeInsets cardPadding;

  /// The filePadding is the Padding between file and its container of the UploadCard
  final AppEdgeInsets filePadding;

  /// The spacing is between details in the UploadCard
  final double spacing;

  const KIUploadCardProperties({
    required this.borderRadius,
     this.fileBorder,
     this.cardBorder,
    required this.iconSizeValue,
    required this.padding,
    required this.titleStyle,
    required this.descriptionStyle,
    required this.showCloseIcon,
    required this.uploadCardPadding,
    required this.sectionPadding,
    required this.filePadding,
    required this.cardPadding,
    required this.spacing,
  });

  @override
  KIUploadCardProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    Border? border,
    Border? cardBorder,
    double? gap,
    double? iconSizeValue,
    AppEdgeInsets? padding,
    AppTextStyle? titleStyle,
    AppTextStyle? descriptionStyle,
    AppTextStyle? infoStyle,
    bool? showCloseIcon,
    AppEdgeInsets? uploadCardPadding,
    AppEdgeInsets? sectionPadding,
    AppEdgeInsets? filePadding,
    AppEdgeInsets? cardPadding,
    double? spacing,
  }) {
    return KIUploadCardProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      fileBorder: border ?? this.fileBorder,
      cardBorder: cardBorder ?? this.cardBorder,
      iconSizeValue: iconSizeValue ?? this.iconSizeValue,
      padding: padding ?? this.padding,
      titleStyle: titleStyle ?? this.titleStyle,
      descriptionStyle: descriptionStyle ?? this.descriptionStyle,
      showCloseIcon: showCloseIcon ?? this.showCloseIcon,
      uploadCardPadding: uploadCardPadding ?? this.uploadCardPadding,
      sectionPadding: sectionPadding ?? this.sectionPadding,
      filePadding: filePadding ?? this.filePadding,
      cardPadding: cardPadding ?? this.cardPadding,
      spacing: spacing ?? this.spacing,
    );
  }

  @override
  KIUploadCardProperties lerp(
      ThemeExtension<KIUploadCardProperties>? other, double t) {
    if (other is! KIUploadCardProperties) return this;

    return KIUploadCardProperties(
      borderRadius:
          BorderRadiusGeometry.lerp(borderRadius, other.borderRadius, t)!,
      fileBorder: Border.lerp(fileBorder, other.fileBorder, t)!,
      cardBorder: Border.lerp(cardBorder, other.cardBorder, t)!,
      iconSizeValue: lerpDouble(iconSizeValue, other.iconSizeValue, t)!,
      spacing: lerpDouble(spacing, other.spacing, t)!,
      padding: padding,
      titleStyle: titleStyle,
      descriptionStyle: descriptionStyle,
      showCloseIcon: showCloseIcon,
      uploadCardPadding: uploadCardPadding,
      sectionPadding: sectionPadding,
      filePadding: filePadding,
      cardPadding: cardPadding,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "UploadCardSizeProperties"))
      ..add(DiagnosticsProperty<Border>("fileBorder", fileBorder))
      ..add(DiagnosticsProperty<Border>("cardBorder", cardBorder))
      ..add(DoubleProperty("iconSizeValue", iconSizeValue))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding))
      ..add(DiagnosticsProperty<AppTextStyle>("titleStyle", titleStyle))
      ..add(DiagnosticsProperty<AppTextStyle>(
          "descriptionStyle", descriptionStyle))
      ..add(DiagnosticsProperty<bool>("showCloseIcon", showCloseIcon))
      ..add(DiagnosticsProperty<AppEdgeInsets>(
          "uploadCardPadding", uploadCardPadding))
      ..add(
          DiagnosticsProperty<AppEdgeInsets>("sectionPadding", sectionPadding))
      ..add(DiagnosticsProperty<AppEdgeInsets>("filePadding", filePadding))
      ..add(DiagnosticsProperty<AppEdgeInsets>("cardPadding", cardPadding))
      ..add(DoubleProperty("spacing", spacing));
  }
}
