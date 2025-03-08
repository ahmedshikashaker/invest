import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIConverterSwitchProperties
    extends ThemeExtension<KIConverterSwitchProperties>
    with DiagnosticableTreeMixin {
  /// The title Align of the Converter card.
  final double iconSize;

  KIConverterSwitchProperties({required this.iconSize});

  @override
  KIConverterSwitchProperties copyWith({
    double? iconSize,
  }) {
    return KIConverterSwitchProperties(
      iconSize: iconSize ?? this.iconSize,
    );
  }

  @override
  KIConverterSwitchProperties lerp(
      ThemeExtension<KIConverterSwitchProperties>? other, double t) {
    if (other is! KIConverterSwitchProperties) return this;

    return KIConverterSwitchProperties(
      iconSize: iconSize,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIConverterProperties"))
      ..add(DoubleProperty("iconSize", iconSize));
  }
}
