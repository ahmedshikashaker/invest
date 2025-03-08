import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class KIAuthScaffoldProperties extends ThemeExtension<KIAuthScaffoldProperties>
    with DiagnosticableTreeMixin {
  /// The image background Path of the Splash.
  final String imagePath;
  final AppTextStyle titleTextStyle;
  final AppTextStyle subtitleTextStyle;

  KIAuthScaffoldProperties({
    required this.titleTextStyle,
    required this.imagePath,
    required this.subtitleTextStyle,
  });

  @override
  KIAuthScaffoldProperties copyWith({
    String? imagePath,
    AppTextStyle? titleTextStyle,
    AppTextStyle? subtitleTextStyle,
  }) {
    return KIAuthScaffoldProperties(
      imagePath: imagePath ?? this.imagePath,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? this.subtitleTextStyle,
    );
  }

  @override
  KIAuthScaffoldProperties lerp(
      ThemeExtension<KIAuthScaffoldProperties>? other, double t) {
    if (other is! KIAuthScaffoldProperties) return this;

    return KIAuthScaffoldProperties(
      imagePath: imagePath,
      titleTextStyle: titleTextStyle,
      subtitleTextStyle: subtitleTextStyle,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KIAuthScaffoldProperties"))
      ..add(DiagnosticsProperty<String>("imagePath", imagePath))
      ..add(DiagnosticsProperty<AppTextStyle>("titleTextStyle", titleTextStyle))
      ..add(DiagnosticsProperty<AppTextStyle>(
          "subtitleTextStyle", subtitleTextStyle));
  }
}
