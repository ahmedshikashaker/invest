import 'dart:ui';

import 'package:fl_chart/fl_chart.dart';

// grid_data_helper.dart
class GridDataHelper {
  static FlGridData generateGridData({
    required Color? gridLineColor,
    required double? horizontalInterval,
    required bool? showGridLines,
    required bool? drawHorizontalLine,
    required bool? drawVerticalLine,
    required double? gridStrokeWidth,
     required List<int>? dashArray
  }) {
    return FlGridData(
      show: showGridLines ?? false,
      drawHorizontalLine: drawHorizontalLine ?? false,
      drawVerticalLine: drawVerticalLine ?? false,
      horizontalInterval: horizontalInterval,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: gridLineColor,
          strokeWidth: gridStrokeWidth ?? 0,
          dashArray: dashArray,
        );
      },
    );
  }
}
