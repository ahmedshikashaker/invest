import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KILoginProperties extends ThemeExtension<KILoginProperties>
    with DiagnosticableTreeMixin {
  /// The image background Path of the Splash.
  final String imagePath;

  KILoginProperties({
    required this.imagePath,
  });

  @override
  KILoginProperties copyWith({
    String? imagePath,
  }) {
    return KILoginProperties(
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  KILoginProperties lerp(ThemeExtension<KILoginProperties>? other, double t) {
    if (other is! KILoginProperties) return this;

    return KILoginProperties(
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
