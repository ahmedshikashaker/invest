import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KISuccessfulBackgroundImages
    extends ThemeExtension<KISuccessfulBackgroundImages>
    with DiagnosticableTreeMixin {
  final String backgroundImage;

  KISuccessfulBackgroundImages({
    required this.backgroundImage,
  });

  @override
  KISuccessfulBackgroundImages copyWith({String? backgroundImage}) {
    return KISuccessfulBackgroundImages(
      backgroundImage: backgroundImage ?? this.backgroundImage,
    );
  }

  @override
  KISuccessfulBackgroundImages lerp(
      covariant ThemeExtension<KISuccessfulBackgroundImages>? other, double t) {
    if (other is! KISuccessfulBackgroundImages) return this;

    return KISuccessfulBackgroundImages(backgroundImage: backgroundImage);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('backgroundImage', backgroundImage));
  }
}
