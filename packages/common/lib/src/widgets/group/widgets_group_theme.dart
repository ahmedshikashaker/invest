import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/group/widgets_group_properties.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:kib_design_system/kib_design_system.dart';

@immutable
class KIWidgetsGroupTheme extends ThemeExtension<KIWidgetsGroupTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData tokens;

  final KIWidgetsGroupProperties properties;

  KIWidgetsGroupTheme({
    required this.tokens,
    KIWidgetsGroupProperties? properties,
  }) : properties = properties ??
            KIWidgetsGroupProperties(
              padding: const AppEdgeInsets.none(),
              horizontalGapValue: AppGapSize.m,
              verticalGapValue: AppGapSize.m,
              crossAxisAlignment: CrossAxisAlignment.center,
            );

  @override
  KIWidgetsGroupTheme copyWith({
    AppThemeData? tokens,
    KIWidgetsGroupProperties? properties,
  }) {
    return KIWidgetsGroupTheme(
      tokens: tokens ?? this.tokens,
      properties: properties ?? this.properties,
    );
  }

  @override
  KIWidgetsGroupTheme lerp(
      ThemeExtension<KIWidgetsGroupTheme>? other, double t) {
    if (other is! KIWidgetsGroupTheme) return this;

    return KIWidgetsGroupTheme(
      tokens: other.tokens,
      properties: properties.lerp(other.properties, t),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder diagnosticProperties) {
    super.debugFillProperties(diagnosticProperties);
    diagnosticProperties
      ..add(DiagnosticsProperty("type", "KIWidgetTheme"))
      ..add(DiagnosticsProperty<AppThemeData>("tokens", tokens))
      ..add(DiagnosticsProperty<KIWidgetsGroupProperties>(
          "properties", properties));
  }
}
