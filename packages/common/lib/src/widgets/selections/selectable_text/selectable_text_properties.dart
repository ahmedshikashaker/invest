import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KISelectableTextProperties
    extends ThemeExtension<KISelectableTextProperties>
    with DiagnosticableTreeMixin {
  final AppTextStyle style;

  final AppTextStyle selectedStyle;

  const KISelectableTextProperties({
    required this.style,
    required this.selectedStyle,
  });

  @override
  KISelectableTextProperties copyWith({
    AppTextStyle? style,
    AppTextStyle? selectedStyle,
  }) {
    return KISelectableTextProperties(
      style: style ?? this.style,
      selectedStyle: selectedStyle ?? this.selectedStyle,
    );
  }

  @override
  KISelectableTextProperties lerp(
      ThemeExtension<KISelectableTextProperties>? other, double t) {
    if (other is! KISelectableTextProperties) return this;

    return KISelectableTextProperties(
      style: style,
      selectedStyle: selectedStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KISelectableTextProperties"))
      ..add(DiagnosticsProperty<AppTextStyle>("style", style))
      ..add(DiagnosticsProperty<AppTextStyle>("selectedStyle", selectedStyle));
  }
}
