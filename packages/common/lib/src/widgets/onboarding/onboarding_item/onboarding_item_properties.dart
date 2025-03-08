import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIOnboardingItemProperties
    extends ThemeExtension<KIOnboardingItemProperties>
    with DiagnosticableTreeMixin {
  final AppTextStyle titleTextStyle;
  final AppTextStyle statusTextStyle;
  final AppEdgeInsets sidesPadding;
  final AppGap avatarTitleSpace;
  final AppGap titleProgBarSpace;
  final AppGap progBarStatTitleSpace;
  final BorderRadiusGeometry borderRadius;
  final double width;
  final double height;

  const KIOnboardingItemProperties(
      {required this.titleTextStyle,
      required this.statusTextStyle,
      required this.sidesPadding,
      required this.borderRadius,
      required this.avatarTitleSpace,
      required this.titleProgBarSpace,
      required this.progBarStatTitleSpace,
      required this.width,
      required this.height});

  @override
  KIOnboardingItemProperties copyWith({
    AppTextStyle? titleTextStyle,
    AppTextStyle? statusTextStyle,
    AppEdgeInsets? sidesPadding,
    BorderRadiusGeometry? borderRadius,
    AppGap? avatarTitleSpace,
    AppGap? titleProgBarSpace,
    AppGap? progBarStatTitleSpace,
    double? width,
    double? height,
  }) {
    return KIOnboardingItemProperties(
        titleTextStyle: titleTextStyle ?? this.titleTextStyle,
        statusTextStyle: statusTextStyle ?? this.statusTextStyle,
        sidesPadding: sidesPadding ?? this.sidesPadding,
        avatarTitleSpace: avatarTitleSpace ?? this.avatarTitleSpace,
        titleProgBarSpace: titleProgBarSpace ?? this.titleProgBarSpace,
        progBarStatTitleSpace:
            progBarStatTitleSpace ?? this.progBarStatTitleSpace,
        borderRadius: borderRadius ?? this.borderRadius,
        width: width ?? this.width,
        height: height ?? this.height);
  }

  @override
  KIOnboardingItemProperties lerp(
      covariant ThemeExtension<KIOnboardingItemProperties>? other, double t) {
    if (other is! KIOnboardingItemProperties) return this;

    return KIOnboardingItemProperties(
      titleTextStyle: titleTextStyle,
      statusTextStyle: statusTextStyle,
      sidesPadding: sidesPadding,
      borderRadius: borderRadius,
      avatarTitleSpace: avatarTitleSpace,
      titleProgBarSpace: titleProgBarSpace,
      progBarStatTitleSpace: progBarStatTitleSpace,
      height: height,
      width: width
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty<AppTextStyle>('titleTextStyle', titleTextStyle))
      ..add(
          DiagnosticsProperty<AppTextStyle>('statusTextStyle', statusTextStyle))
      ..add(DiagnosticsProperty<AppEdgeInsets>('sidesPadding', sidesPadding))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          'borderRadius', borderRadius))
      ..add(DiagnosticsProperty<AppGap>(
          'progBarStatTitleSpace', progBarStatTitleSpace))
      ..add(DiagnosticsProperty<AppGap>('titleProgBarSpace', titleProgBarSpace))
      ..add(DiagnosticsProperty<AppGap>('avatarTitleSpace', avatarTitleSpace))
      ..add(DoubleProperty('width', width))
      ..add(DoubleProperty('height', height));
  }
}
