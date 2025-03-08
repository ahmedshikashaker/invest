import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KITransactionIconProperties
    extends ThemeExtension<KITransactionIconProperties>
    with DiagnosticableTreeMixin {
  /// The size value of the Transaction icon.
  final double iconSize;

  /// The padding of the Transaction.
  final AppEdgeInsets padding;

  const KITransactionIconProperties({
    required this.iconSize,
    required this.padding,
  });

  @override
  KITransactionIconProperties copyWith({
    double? iconSize,
    AppEdgeInsets? padding,
  }) {
    return KITransactionIconProperties(
      iconSize: iconSize ?? this.iconSize,
      padding: padding ?? this.padding,
    );
  }

  @override
  KITransactionIconProperties lerp(
    ThemeExtension<KITransactionIconProperties>? other,
    double t,
  ) {
    if (other is! KITransactionIconProperties) return this;

    return KITransactionIconProperties(
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
      padding: padding,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KITransactionIconProperties"))
      ..add(DoubleProperty("iconSize", iconSize))
      ..add(DiagnosticsProperty<AppEdgeInsets>("padding", padding));
  }
}
