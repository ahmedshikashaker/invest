import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/avatars/circular_avatar/circular_avatar_colors.dart';
import 'package:invest_common/src/widgets/avatars/circular_avatar/circular_avatar_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';


@immutable
class KICircularAvatarTheme extends ThemeExtension<KICircularAvatarTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;
  final KICircularAvatarColors colors;
  final KICircularAvatarProperties properties;

  KICircularAvatarTheme({
    required this.tokens,
    KICircularAvatarColors? colors,
    KICircularAvatarProperties? properties,
  })  : colors = colors ??
            KICircularAvatarColors(
              iconColor: AppColorsData.azure.shade500,
              backgroundColor: AppColorsData.azure.shade100,
            ),
        properties = properties ??
            KICircularAvatarProperties(
              iconSize: tokens.spacing.xl.rw,
              padding: AppEdgeInsets.xxs(),
              iconPadding: AppEdgeInsets.xxs(),
              border: Border.all(color: AppColorsData.azure.shade500,)
            );

  @override
  KICircularAvatarTheme copyWith({
    AppThemeData? tokens,
    KICircularAvatarColors? colors,
    KICircularAvatarProperties? properties,
  }) {
    return KICircularAvatarTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KICircularAvatarTheme lerp(
      ThemeExtension<KICircularAvatarTheme>? other, double t) {
    if (other is! KICircularAvatarTheme) return this;

    return KICircularAvatarTheme(
      tokens: other.tokens,
      colors: colors.lerp(other.colors, t),
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KICircularAvatarTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KICircularAvatarColors>("colors", colors))
      ..add(DiagnosticsProperty<KICircularAvatarProperties>(
          "properties", properties));
  }
}
