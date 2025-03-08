import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIConverterProperties extends ThemeExtension<KIConverterProperties>
    with DiagnosticableTreeMixin {
  /// The border radius of the Converter card.
  final BorderRadiusGeometry borderRadius;

  /// The gapSize between Converter card and info widget.
  final AppGapSize gapSize;

  KIConverterProperties({
    required this.borderRadius,
    required this.gapSize,
  });

  @override
  KIConverterProperties copyWith({
    BorderRadiusGeometry? borderRadius,
    AppGapSize? gapSize,
  }) {
    return KIConverterProperties(
      borderRadius: borderRadius ?? this.borderRadius,
      gapSize: gapSize ?? this.gapSize,
    );
  }

  @override
  KIConverterProperties lerp(
      ThemeExtension<KIConverterProperties>? other, double t) {
    if (other is! KIConverterProperties) return this;

    return KIConverterProperties(
      borderRadius: borderRadius,
      gapSize: gapSize,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterProperties"))
      ..add(DiagnosticsProperty("gapSize", gapSize))
      ..add(DiagnosticsProperty<BorderRadiusGeometry>(
          "borderRadius", borderRadius));
  }
}
