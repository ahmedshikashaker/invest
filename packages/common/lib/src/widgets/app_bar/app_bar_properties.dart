import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIAppBarProperties extends ThemeExtension<KIAppBarProperties>
    with DiagnosticableTreeMixin {
  final String backgroundImagePath;

  const KIAppBarProperties({
    required this.backgroundImagePath,
  });

  @override
  KIAppBarProperties copyWith({
    String? backgroundImagePath,
  }) {
    return KIAppBarProperties(
      backgroundImagePath: backgroundImagePath ?? this.backgroundImagePath,
    );
  }

  @override
  KIAppBarProperties lerp(ThemeExtension<KIAppBarProperties>? other, double t) {
    if (other is! KIAppBarProperties) return this;

    return KIAppBarProperties(
      backgroundImagePath: backgroundImagePath,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAppBarProperties"))
      ..add(DiagnosticsProperty<String>(
          "backgroundImagePath", backgroundImagePath));
  }
}
