import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KICircularAvatarProperties
    extends ThemeExtension<KICircularAvatarProperties>
    with DiagnosticableTreeMixin {
  final double iconSize;
  final AppEdgeInsets padding;
  final AppEdgeInsets iconPadding;
  final BoxBorder border;

  const KICircularAvatarProperties( {
    required this.iconSize,
    required this.padding,
    required this.border,
    required this.iconPadding,
  });

  @override
  KICircularAvatarProperties copyWith({
    double? iconSize,
    AppEdgeInsets? padding,
    AppEdgeInsets? iconPadding,
    BoxBorder? border,
  }) {
    return KICircularAvatarProperties(
      iconSize: iconSize ?? this.iconSize,
      padding: padding ?? this.padding,
      border: border ?? this.border, iconPadding: this.iconPadding,

    );
  }

  @override
  KICircularAvatarProperties lerp(
      ThemeExtension<KICircularAvatarProperties>? other, double t) {
    if (other is! KICircularAvatarProperties) return this;

    return KICircularAvatarProperties(
      iconSize: lerpDouble(iconSize, other.iconSize, t)!,
      padding: padding,
      border: border, iconPadding: iconPadding,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DoubleProperty('iconSize', iconSize))
      ..add(DiagnosticsProperty<AppEdgeInsets>('padding', padding))
      ..add(DiagnosticsProperty<BoxBorder>('border', border))
      ..add(DiagnosticsProperty<AppEdgeInsets>('iconPadding', iconPadding));
  }
}
