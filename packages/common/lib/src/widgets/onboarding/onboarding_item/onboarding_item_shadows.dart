import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIOnboardingItemShadows extends ThemeExtension<KIOnboardingItemShadows>
    with DiagnosticableTreeMixin {
  final List<BoxShadow> shadows;

  const KIOnboardingItemShadows({required this.shadows});

  @override
  KIOnboardingItemShadows copyWith({
    List<BoxShadow>? shadows,
  }) {
    return KIOnboardingItemShadows(shadows: shadows ?? this.shadows);
  }

  @override
  KIOnboardingItemShadows lerp(
      covariant ThemeExtension<dynamic>? other, double t) {
    if (other is! KIOnboardingItemShadows) return this;

    return KIOnboardingItemShadows(
      shadows: BoxShadow.lerpList(shadows, other.shadows, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty<BoxShadow>('shadows', shadows));
  }
}
