import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:kib_core/kib_core.dart';

// line_touch_data_helper.dart
class LineTouchDataHelper {
  static LineTouchData generateLineTouchData({
    required Color? borderColor,
    required Color? lineColor,
    required Color? backgroundColor,
    required Color? tooltipBackgroundColor,
    required Color? spotIndicatorBorderColor,
    required TextStyle? tooltipTextStyle,
    required double? dotRadius,
    required bool? enabled,
    required bool? showTouchedSpotIndicators,
    required bool? handleBuiltInTouches,
    required double? touchedSpotIndicatorStrokeWidth,
    required double? touchedSpotIndicatorLineStrokeWidth,
    void Function(double x)? onSpotSelected,
    List<TextSpan>? Function(LineBarSpot spot)? getTooltip,
  }) {
    return LineTouchData(
      enabled: enabled ?? true,
      handleBuiltInTouches: handleBuiltInTouches ?? true,
      getTouchedSpotIndicator:
          (LineChartBarData barData, List<int> spotIndexes) {
        if (!(showTouchedSpotIndicators ?? false)) {
          // If you don't want to show indicators, return empty
          return spotIndexes
              .map(
                (_) => TouchedSpotIndicatorData(
                  FlLine(color: Colors.transparent, strokeWidth: 0),
                  FlDotData(show: false),
                ),
              )
              .toList();
        }
        return spotIndexes.map((index) {
          return TouchedSpotIndicatorData(
            FlLine(
              color: borderColor,
              strokeWidth: touchedSpotIndicatorLineStrokeWidth ?? 0,
            ),
            FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) =>
                  FlDotCirclePainter(
                radius: (dotRadius ?? 4) * 2,
                color: lineColor!,
                strokeWidth: touchedSpotIndicatorStrokeWidth ?? 0,
                strokeColor: spotIndicatorBorderColor!,
              ),
            ),
          );
        }).toList();
      },
      touchCallback: (FlTouchEvent event, LineTouchResponse? touchResponse) {
        if (!event.isInterestedForInteractions || touchResponse == null) {
          return;
        }
        final spot = touchResponse.lineBarSpots?.first;
        if (spot != null) {
          onSpotSelected?.call(spot.x);
        }
      },
      touchTooltipData: LineTouchTooltipData(
        getTooltipColor: (LineBarSpot touchedSpot) => tooltipBackgroundColor!,

        getTooltipItems: (spots) {
          return spots.map((LineBarSpot spot) {
            return LineTooltipItem('', tooltipTextStyle!,
                children: getTooltip?.call(spot) ??
                    [
                      TextSpan(
                          text: AmountFormatter.fromNum(spot.y).format(),
                          style: tooltipTextStyle)
                    ]);
          }).toList();
        },
      ),
    );
  }
}
