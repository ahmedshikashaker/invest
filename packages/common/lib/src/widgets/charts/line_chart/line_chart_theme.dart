import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:invest_common/src/widgets/charts/line_chart/formatters/line_chart_thousand_formatter.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:invest_common/src/widgets/charts/line_chart/line_chart_colors.dart';
import 'package:invest_common/src/widgets/charts/line_chart/line_chart_properties.dart';

@immutable
class KILineChartTheme extends ThemeExtension<KILineChartTheme>
    with DiagnosticableTreeMixin {
  final AppThemeData? tokens;
  final KILineChartColors? colors;
  final KILineChartProperties? properties;

  KILineChartTheme(
      {this.tokens,
      KILineChartColors? colors,
      KILineChartProperties? properties})
      : colors = colors ??
            KILineChartColors(
              lineColor: tokens?.colors.actionableSecondary,
              backgroundColor: Colors.transparent,
              spotIndicatorBorderColor: Colors.white,
              tooltipBackgroundColor: AppColorsData.shades.shade100,
              barAreaGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    tokens!.colors.actionableSecondary,
                    AppColorsData.white
                  ]),
              gridLineColor: AppColorsData.shades.shade400,
              selectedDotColor: tokens.colors.actionableSecondary,
              borderColor: AppColorsData.white,
            ),
        properties = properties ??
            KILineChartProperties(
                lineWidth: 2,
                dotRadius: 4,
                dashArray: [2, 2],
                bottomTitlesInterval: 1,
                leftTitlesInterval: 1000.0,
                gridHorizontalInterval: 1000.0,
                axisFontSize: 12,
                tooltipFontSize: 12,
                touchedSpotIndicatorStrokeWidth: 2,
                touchedSpotIndicatorLineStrokeWidth: 1,
                gridStrokeWidth: .8,
                //Styles
                axisTextStyle: tokens?.typography.content.tinyMedium
                    .copyWith(color: tokens.colors.textDisabled),
                selectedAxisTextStyle: tokens?.typography.content.tinyBold,
                leftAxisTextStyle: tokens?.typography.content.tinyMedium,
                tooltipTextStyle: tokens?.typography.content.tinyBold,

                // Booleans Flags
                showBarArea: true,
                showTooltip: true,
                showDots: false,
                isCurved: true,
                showGridLines: true,
                drawHorizontalLine: true,
                drawVerticalLine: false,
                enabledTouch: false,
                showTouchedSpotIndicators: true,
                handleBuiltInTouches: false,
                showBottomTitles: true,
                showLeftTitles: true,
                showTopTitles: false,
                showRightTitles: false,
                showLineChartBorder: false,
                //Borders
                lineChartBorder: Border.all(),
                //Formatters
                lineChartAxisFormatter: LineChartThousandFormatter());

  @override
  KILineChartTheme copyWith({
    AppThemeData? tokens,
    KILineChartColors? colors,
    KILineChartProperties? properties,
  }) {
    return KILineChartTheme(
      tokens: tokens ?? this.tokens,
      colors: colors ?? this.colors,
      properties: properties ?? this.properties,
    );
  }

  @override
  KILineChartTheme lerp(ThemeExtension<KILineChartTheme>? other, double t) {
    if (other is! KILineChartTheme) return this;

    return KILineChartTheme(
        colors: colors?.lerp(other.colors, t),
        properties: properties?.lerp(other.properties, t),
        tokens: other.tokens);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder props) {
    super.debugFillProperties(props);
    props
      ..add(DiagnosticsProperty("colors", colors))
      ..add(DiagnosticsProperty("properties", properties))
      ..add(DiagnosticsProperty("tokens", tokens));
  }
}
