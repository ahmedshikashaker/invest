import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIAccountIconProperties
    extends ThemeExtension<KIAccountIconProperties>
    with DiagnosticableTreeMixin {
  /// The size value of the Account icon.
  final double iconSize;


  const KIAccountIconProperties({
    required this.iconSize,
  });

  @override
  KIAccountIconProperties copyWith({
    double? iconSize,
    AppEdgeInsets? padding,
  }) {
    return KIAccountIconProperties(
      iconSize: iconSize ?? this.iconSize,
    );
  }

  @override
  KIAccountIconProperties lerp(
      ThemeExtension<KIAccountIconProperties>? other,
      double t,
      ) {
    if (other is! KIAccountIconProperties) return this;

    return KIAccountIconProperties(
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAccountIconProperties"))
      ..add(DoubleProperty("iconSize", iconSize));
  }
}
