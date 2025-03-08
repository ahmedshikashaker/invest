import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIWelcomeOnBoardingProperties extends ThemeExtension<KIWelcomeOnBoardingProperties>
    with DiagnosticableTreeMixin {
  /// The image background Path of the Splash.
  final String imagePath1;
  final String imagePath2;
  final String imagePath3;

  KIWelcomeOnBoardingProperties({
    required this.imagePath1,
    required this.imagePath2,
    required this.imagePath3,
  });

  @override
  KIWelcomeOnBoardingProperties copyWith({
    String? imagePath1,
    String? imagePath2,
    String? imagePath3,
  }) {
    return KIWelcomeOnBoardingProperties(
      imagePath1: imagePath1 ?? this.imagePath1,
      imagePath2: imagePath2 ?? this.imagePath2,
      imagePath3: imagePath3 ?? this.imagePath3,
    );
  }

  @override
  KIWelcomeOnBoardingProperties lerp(ThemeExtension<KIWelcomeOnBoardingProperties>? other, double t) {
    if (other is! KIWelcomeOnBoardingProperties) return this;

    return KIWelcomeOnBoardingProperties(
      imagePath1: imagePath1,
      imagePath2: imagePath2,
      imagePath3: imagePath3,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIOnBoardingProperties"))
      ..add(DiagnosticsProperty<String>("imagePath1", imagePath1))
      ..add(DiagnosticsProperty<String>("imagePath2", imagePath2))
      ..add(DiagnosticsProperty<String>("imagePath3", imagePath3))
    ;
  }
}
