import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KiFieldTitleProperties extends ThemeExtension<KiFieldTitleProperties>
    with DiagnosticableTreeMixin {
  final AppTextStyle titleTextStyle;
  final AppGapSize titleSpacing;

  const KiFieldTitleProperties({
    required this.titleTextStyle,
    required this.titleSpacing,
  });

  @override
  KiFieldTitleProperties copyWith({
    AppTextStyle? titleTextStyle,
    AppGapSize? titleSpacing,
  }) {
    return KiFieldTitleProperties(
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      titleSpacing: titleSpacing ?? this.titleSpacing,
    );
  }

  @override
  KiFieldTitleProperties lerp(
      ThemeExtension<KiFieldTitleProperties>? other, double t) {
    if (other is! KiFieldTitleProperties) return this;

    return KiFieldTitleProperties(
      titleTextStyle: other.titleTextStyle,
      titleSpacing: titleSpacing,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KiFieldTitleProperties"))
      ..add(DiagnosticsProperty<AppTextStyle>("titleTextStyle", titleTextStyle))
      ..add(EnumProperty<AppGapSize>("titleSpacing", titleSpacing));
  }
}