import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:invest_common/common.dart';
import 'package:invest_common/src/widgets/charts/line_chart/formatters/abstract_line_chart_formatter.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/src/widgets/charts/line_chart/data_helpers/grid_data_helper.dart';
import 'package:invest_common/src/widgets/charts/line_chart/data_helpers/line_chart_bars_data_helper.dart';
import 'package:invest_common/src/widgets/charts/line_chart/data_helpers/line_chart_touch_data_helper.dart';
import 'package:invest_common/src/widgets/charts/line_chart/data_helpers/titles_data_helpers.dart';

class KILineChart extends StatefulWidget {
  // ---------------------------------------------------------------------------
  // REQUIRED FIELDS
  // ---------------------------------------------------------------------------
  final List<FlSpot> yAxisPoints;
  final List<String> xAxisLabels;

  /// Callback when a [FlSpot] is tapped or selected.
  final void Function(FlSpot spot)? onSpotSelected;

  final List<TextSpan>? Function(FlSpot spot)? getTooltip;

  // ---------------------------------------------------------------------------
  // THEME-OVERRIDDEN FIELDS (ALL NULLABLE)
  // ---------------------------------------------------------------------------
  // Colors
  final Color? lineColor;
  final Color? backgroundColor;
  final Color? tooltipBackgroundColor;
  final Color? selectedDotColor;
  final Color? gridLineColor;
  final Color? borderColor;
  final Color? spotIndicatorBorderColor;
  final Gradient? barAreaGradientOverride;

  // TextStyles
  final TextStyle? axisTextStyle;
  final TextStyle? selectedAxisTextStyle;
  final TextStyle? leftAxisTextStyle;
  final TextStyle? tooltipTextStyle;

  // Numeric properties
  final double? lineWidth;
  final double? dotRadius;
  final double? bottomTitlesInterval;
  final double? leftTitlesInterval;
  final double? gridHorizontalInterval;
  final double? maxY;
  final double? barAreaOpacity;
  final double? tooltipFontSize;
  final double? axisFontSize;

  // Booleans (overrides)
  final bool? showBarArea;
  final bool? showDots;
  final bool? isCurved;
  final bool? showGridLines;
  final bool? drawHorizontalLine;
  final bool? drawVerticalLine;
  final bool? enabledTouch;
  final bool? showTouchedSpotIndicators;
  final bool? handleBuiltInTouches;
  final bool? showBottomTitles;
  final bool? showLeftTitles;
  final bool? showTopTitles;
  final bool? showRightTitles;
  final bool? showLineChartBorder;
  final bool? showTooltip;

  // Stroke/other
  final double? touchedSpotIndicatorStrokeWidth;
  final double? touchedSpotIndicatorLineStrokeWidth;
  final double? gridStrokeWidth;
  final List<int>? dashArray;

  //define Borders
  final Border? lineChartBorder;

  //define formatters
  final AbstractLineChartAxisFormatter? lineChartAxisFormatter;

  const KILineChart(
      {Key? key,
      // Required
      required this.yAxisPoints,
      required this.xAxisLabels,
      this.onSpotSelected,

      // Colors
      this.lineColor,
      this.backgroundColor,
      this.tooltipBackgroundColor,
      this.selectedDotColor,
      this.gridLineColor,
      this.borderColor,
      this.spotIndicatorBorderColor,
      this.axisTextStyle,
      this.selectedAxisTextStyle,
      this.leftAxisTextStyle,
      this.tooltipTextStyle,

      // Numeric
      this.lineWidth,
      this.dotRadius,
      this.bottomTitlesInterval,
      this.leftTitlesInterval,
      this.gridHorizontalInterval,
      this.maxY,
      this.barAreaOpacity,
      this.tooltipFontSize,
      this.axisFontSize,

      // Booleans
      this.showBarArea,
      this.showDots,
      this.isCurved,
      this.showGridLines,
      this.drawHorizontalLine,
      this.drawVerticalLine,
      this.enabledTouch,
      this.showTouchedSpotIndicators,
      this.handleBuiltInTouches,
      this.showBottomTitles,
      this.showLeftTitles,
      this.showTopTitles,
      this.showRightTitles,
      this.showLineChartBorder,
      this.showTooltip,

      // Stroke
      this.touchedSpotIndicatorStrokeWidth,
      this.touchedSpotIndicatorLineStrokeWidth,
      this.gridStrokeWidth,
      this.dashArray,
      this.barAreaGradientOverride,
      this.lineChartBorder,
      this.getTooltip,
      this.lineChartAxisFormatter})
      : super(key: key);

  @override
  State<KILineChart> createState() => _KILineChartState();
}

class _KILineChartState extends State<KILineChart> {
  double? _selectedX;

  @override
  Widget build(BuildContext context) {
    // -------------------------------------------------------------------------
    // 1) Fetch the KIChartTheme from the current theme
    // -------------------------------------------------------------------------
    final chartTheme = context.lineChartTheme;
    final colors = chartTheme.colors;
    final props = chartTheme.properties;

    // -------------------------------------------------------------------------
    // 2) Resolve Colors from widget -> theme -> fallback
    // -------------------------------------------------------------------------
    final lineColor = widget.lineColor ?? colors?.lineColor;

    final backgroundColor = widget.backgroundColor ?? colors?.backgroundColor;

    final tooltipBackgroundColor =
        widget.tooltipBackgroundColor ?? colors?.tooltipBackgroundColor;

    final selectedDotColor =
        widget.selectedDotColor ?? colors?.selectedDotColor;

    final gridLineColor = widget.gridLineColor ?? colors?.gridLineColor;

    final borderColor = widget.borderColor ?? colors?.borderColor;

    final spotIndicatorBorderColor =
        widget.spotIndicatorBorderColor ?? colors?.spotIndicatorBorderColor;

    // -------------------------------------------------------------------------
    // 3) Resolve Numeric properties from widget -> theme -> fallback
    // -------------------------------------------------------------------------
    final lineWidth = widget.lineWidth ?? props?.lineWidth;
    final dotRadius = widget.dotRadius ?? props?.dotRadius;
    final bottomTitlesInterval =
        widget.bottomTitlesInterval ?? props?.bottomTitlesInterval;
    final leftTitlesInterval =
        widget.leftTitlesInterval ?? props?.leftTitlesInterval;
    final gridHorizontalInterval =
        widget.gridHorizontalInterval ?? props?.gridHorizontalInterval;
    final maxY = widget.maxY ?? props?.maxY ?? _defaultMaxY(widget.yAxisPoints);

    // -------------------------------------------------------------------------
    // 4) Resolve Boolean toggles from widget -> theme -> fallback
    // -------------------------------------------------------------------------
    final showBarArea = widget.showBarArea ?? props?.showBarArea;
    final showDots = widget.showDots ?? props?.showDots;
    final isCurved = widget.isCurved ?? props?.isCurved;
    final showGridLines = widget.showGridLines ?? props?.showGridLines;
    final drawHorizontalLine =
        widget.drawHorizontalLine ?? props?.drawHorizontalLine;
    final drawVerticalLine = widget.drawVerticalLine ?? props?.drawVerticalLine;
    final enabledTouch = widget.enabledTouch ?? props?.enabledTouch;
    final showTouchedSpotIndicators =
        widget.showTouchedSpotIndicators ?? props?.showTouchedSpotIndicators;
    final handleBuiltInTouches =
        widget.handleBuiltInTouches ?? props?.handleBuiltInTouches;
    final showBottomTitles = widget.showBottomTitles ?? props?.showBottomTitles;
    final showLeftTitles = widget.showLeftTitles ?? props?.showLeftTitles;
    final showTopTitles = widget.showTopTitles ?? props?.showTopTitles;
    final showRightTitles = widget.showRightTitles ?? props?.showRightTitles;
    final showLineChartBorder =
        widget.showLineChartBorder ?? props?.showLineChartBorder;
    final showTooltip = widget.showTooltip ?? props?.showTooltip;

    // -------------------------------------------------------------------------
    // 5) Resolve Stroke / dash / etc. from widget -> theme -> fallback
    // -------------------------------------------------------------------------
    final touchedSpotIndicatorStrokeWidth =
        widget.touchedSpotIndicatorStrokeWidth ??
            props?.touchedSpotIndicatorStrokeWidth;
    final touchedSpotIndicatorLineStrokeWidth =
        widget.touchedSpotIndicatorLineStrokeWidth ??
            props?.touchedSpotIndicatorLineStrokeWidth;
    final gridStrokeWidth = widget.gridStrokeWidth ?? props?.gridStrokeWidth;
    final dashArray = widget.dashArray ?? props?.dashArray;

    // -------------------------------------------------------------------------
    // 6) Resolve TextStyles from widget -> props -> final fallback
    // -------------------------------------------------------------------------
    final axisTextStyle = widget.axisTextStyle ?? props?.axisTextStyle;
    final selectedAxisTextStyle =
        widget.selectedAxisTextStyle ?? props?.selectedAxisTextStyle;

    final leftAxisTextStyle =
        widget.leftAxisTextStyle ?? props?.leftAxisTextStyle;

    // If you have a dedicated tooltip text style in [props], fallback to it
    // then fallback to combining [tooltipTextColor] + [tooltipFontSize].
    final tooltipTxtStyle = widget.tooltipTextStyle ?? props?.tooltipTextStyle;

    //Resolve gradient
    final barAreaGradient =
        widget.barAreaGradientOverride ?? colors?.barAreaGradient;

    //resolve borders
    final lineChartBorder = widget.lineChartBorder ?? props?.lineChartBorder;

    //Resolve Formatters
    final lineChartAxisFormatter =
        widget.lineChartAxisFormatter ?? props?.lineChartAxisFormatter;

    // -------------------------------------------------------------------------
    // 7) Generate the lineBarsData via helper
    // -------------------------------------------------------------------------
    final lineBarsData = LineChartDataHelper.generateLineBarsData(
      dataPoints: widget.yAxisPoints,
      selectedX: _selectedX,
      lineColor: lineColor,
      backgroundColor: backgroundColor,
      selectedDotColor: selectedDotColor,
      lineWidth: lineWidth,
      dotRadius: dotRadius,
      isCurved: isCurved,
      showBarArea: showBarArea,
      showDots: showDots,
      barAreaGradient: barAreaGradient,
    );

    // -------------------------------------------------------------------------
    // 8) Callback for tapping bottom axis labels
    // -------------------------------------------------------------------------
    void handleLabelTap(double x) {
      final isCurrentlySelected = (_selectedX == x);
      setState(() => _selectedX = isCurrentlySelected ? null : x);

      if (!isCurrentlySelected && widget.onSpotSelected != null) {
        widget.onSpotSelected!(widget.yAxisPoints[x.toInt()]);
      }
    }

    // -------------------------------------------------------------------------
    // 9) TitlesData via helper
    // -------------------------------------------------------------------------
    final titlesData = TitlesDataHelper.generateTitlesData(
        monthLabels: widget.xAxisLabels,
        selectedX: _selectedX,
        onLabelTapped: handleLabelTap,
        bottomTitlesInterval: bottomTitlesInterval,
        leftTitlesInterval: leftTitlesInterval,
        showBottomTitles: showBottomTitles,
        showLeftTitles: showLeftTitles,
        showTopTitles: showTopTitles,
        showRightTitles: showRightTitles,
        axisTextStyle: axisTextStyle,
        selectedAxisTextStyle: selectedAxisTextStyle,
        leftAxisTextStyle: leftAxisTextStyle,
        lineChartAxisFormatter: lineChartAxisFormatter);

    // -------------------------------------------------------------------------
    // 10) GridData via helper
    // -------------------------------------------------------------------------
    final gridData = GridDataHelper.generateGridData(
      gridLineColor: gridLineColor,
      horizontalInterval: gridHorizontalInterval,
      showGridLines: showGridLines,
      drawHorizontalLine: drawHorizontalLine,
      drawVerticalLine: drawVerticalLine,
      dashArray: dashArray,
      gridStrokeWidth: gridStrokeWidth,
    );

    // -------------------------------------------------------------------------
    // 11) TouchData via helper
    // -------------------------------------------------------------------------
    final lineTouchData = LineTouchDataHelper.generateLineTouchData(
      borderColor: borderColor,
      lineColor: lineColor,
      backgroundColor: backgroundColor,
      spotIndicatorBorderColor: spotIndicatorBorderColor,
      tooltipBackgroundColor: tooltipBackgroundColor,
      tooltipTextStyle: tooltipTxtStyle,
      dotRadius: dotRadius,
      enabled: enabledTouch,
      showTouchedSpotIndicators: showTouchedSpotIndicators,
      handleBuiltInTouches: handleBuiltInTouches,
      touchedSpotIndicatorStrokeWidth: touchedSpotIndicatorStrokeWidth,
      touchedSpotIndicatorLineStrokeWidth: touchedSpotIndicatorLineStrokeWidth,
      onSpotSelected: (x) {
        setState(() => _selectedX = x);
        if (widget.onSpotSelected != null) {
          widget.onSpotSelected!(widget.yAxisPoints[x.toInt()]);
        }
      },
    );

    // -------------------------------------------------------------------------
    // 12) Build the final chart
    // -------------------------------------------------------------------------
    return LineChart(
      LineChartData(
        showingTooltipIndicators: (_selectedX != null && showTooltip == true
                ? [_selectedX!.toInt()]
                : [])
            .map((index) {
          return ShowingTooltipIndicators([
            LineBarSpot(
              lineBarsData.first,
              lineBarsData.indexOf(lineBarsData.first),
              lineBarsData.first.spots[index],
            ),
          ]);
        }).toList(),
        lineBarsData: lineBarsData,
        titlesData: titlesData,
        gridData: gridData,
        lineTouchData: lineTouchData,
        borderData: FlBorderData(
          show: showLineChartBorder,
          border: lineChartBorder,
        ),
        minX: 0,
        maxX: (widget.yAxisPoints.length - 1).toDouble(),
        minY: 0,
        maxY: maxY *1.5,
        backgroundColor: backgroundColor,
      ),
    );
  }

  /// If no explicit or theme maxY is provided,
  /// compute a default from the data + 20% headroom
  double _defaultMaxY(List<FlSpot> dataPoints) {
    if (dataPoints.isEmpty) return 0;
    final localMaxY =
        dataPoints.map((e) => e.y).reduce((a, b) => a > b ? a : b);
    return localMaxY;
  }
}
