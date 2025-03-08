import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LineChartDataHelper {
  static List<LineChartBarData> generateLineBarsData({
    required List<FlSpot> dataPoints,
    required double? selectedX,
    required Color? lineColor,
    required Color? backgroundColor,
    required Color? selectedDotColor,
    required double? lineWidth,
    required double? dotRadius,
    required bool? isCurved,
    required bool? showBarArea,
    required bool? showDots,
    required Gradient? barAreaGradient,
  }) {
    return [
      LineChartBarData(
        showingIndicators: selectedX != null ? [selectedX.toInt()] : [],
        spots: dataPoints,
        isCurved: isCurved ?? false,
        barWidth: lineWidth ?? 0,
        color: lineColor,
        belowBarData: BarAreaData(
          show: showBarArea ?? false,
          gradient: barAreaGradient,
        ),
        dotData: FlDotData(
          show: showDots ?? false,
          getDotPainter: (spot, percent, barData, index) {
            final isSelected = (selectedX != null && spot.x == selectedX);
            if (isSelected) {
              return FlDotCirclePainter(
                radius: (dotRadius ?? 0) * 2,
                color: selectedDotColor!,
                strokeWidth: 2,
                strokeColor: backgroundColor!,
              );
            } else {
              return FlDotCirclePainter(
                radius: dotRadius,
                color: lineColor!,
                strokeWidth: 0,
                strokeColor: Colors.transparent,
              );
            }
          },
        ),
      ),
    ];
  }
}
