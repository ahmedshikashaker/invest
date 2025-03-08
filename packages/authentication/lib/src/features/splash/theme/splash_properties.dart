import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KISplashProperties extends ThemeExtension<KISplashProperties>
    with DiagnosticableTreeMixin {
  /// The image background Path of the Splash.
  final String imagePath;

  KISplashProperties({
    required this.imagePath,
  });

  @override
  KISplashProperties copyWith({
    String? imagePath,
  }) {
    return KISplashProperties(
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  KISplashProperties lerp(ThemeExtension<KISplashProperties>? other, double t) {
    if (other is! KISplashProperties) return this;

    return KISplashProperties(
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
