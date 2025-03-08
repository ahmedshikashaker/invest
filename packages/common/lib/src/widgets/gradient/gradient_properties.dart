import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class KIGradientProperties extends ThemeExtension<KIGradientProperties>
    with DiagnosticableTreeMixin {
  final BlendMode blendMode;

  const KIGradientProperties({required this.blendMode});

  @override
  KIGradientProperties copyWith({BlendMode? blendMode}) {
    return KIGradientProperties(blendMode: blendMode ?? this.blendMode);
  }

  @override
  KIGradientProperties lerp(
      covariant ThemeExtension<KIGradientProperties>? other, double t) {
    if (other is! KIGradientProperties) return this;

    return KIGradientProperties(blendMode: blendMode);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(EnumProperty<BlendMode>('blendMode', blendMode));
  }
}
