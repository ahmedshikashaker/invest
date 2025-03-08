import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KILandingProperties extends ThemeExtension<KILandingProperties>
    with DiagnosticableTreeMixin {
  /// The image background Path of the Splash.
  final String imagePath;

  KILandingProperties({
    required this.imagePath,
  });

  @override
  KILandingProperties copyWith({
    String? imagePath,
  }) {
    return KILandingProperties(
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  KILandingProperties lerp(ThemeExtension<KILandingProperties>? other, double t) {
    if (other is! KILandingProperties) return this;

    return KILandingProperties(
      imagePath: imagePath,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KISplashProperties"))
      ..add(DiagnosticsProperty<String>("imagePath", imagePath));
  }
}
