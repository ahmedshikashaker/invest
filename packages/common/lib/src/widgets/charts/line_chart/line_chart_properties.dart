import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/widgets/charts/line_chart/formatters/abstract_line_chart_formatter.dart';

@immutable
class KILineChartProperties extends ThemeExtension<KILineChartProperties>
    with DiagnosticableTreeMixin {
  // ---------------------------------------------------------------------------
  // Numeric properties
  // ---------------------------------------------------------------------------
  final double? lineWidth;
  final double? dotRadius;
  final double? bottomTitlesInterval;
  final double? leftTitlesInterval;
  final double? gridHorizontalInterval;
  final double? maxY;
  final double? tooltipFontSize;
  final double? axisFontSize;
  final double? touchedSpotIndicatorLineStrokeWidth;
  final double? touchedSpotIndicatorStrokeWidth;
  final double? gridStrokeWidth;
  final List<int>? dashArray;

  // ---------------------------------------------------------------------------
  // Text styles
  // ---------------------------------------------------------------------------
  final TextStyle? axisTextStyle;
  final TextStyle? selectedAxisTextStyle;
  final TextStyle? leftAxisTextStyle;
  final TextStyle? tooltipTextStyle;

  // ---------------------------------------------------------------------------
  // Boolean toggles (all nullable)
  // ---------------------------------------------------------------------------
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

  //define Borders
  final Border? lineChartBorder;

  //formatters
  final AbstractLineChartAxisFormatter? lineChartAxisFormatter;

  const KILineChartProperties(
      {
      // Numeric
      this.lineWidth,
      this.dotRadius,
      this.bottomTitlesInterval,
      this.leftTitlesInterval,
      this.gridHorizontalInterval,
      this.maxY,
      this.tooltipFontSize,
      this.axisFontSize,
      this.touchedSpotIndicatorLineStrokeWidth,
      this.touchedSpotIndicatorStrokeWidth,
      this.gridStrokeWidth,
      this.dashArray,

      // Text styles
      this.axisTextStyle,
      this.selectedAxisTextStyle,
      this.leftAxisTextStyle,
      this.tooltipTextStyle,

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

      //Borders
      this.lineChartBorder,
      //formatters
      this.lineChartAxisFormatter});

  // ---------------------------------------------------------------------------
  // copyWith
  // ---------------------------------------------------------------------------
  @override
  KILineChartProperties copyWith(
      {
      // Numeric
      double? lineWidth,
      double? dotRadius,
      double? bottomTitlesInterval,
      double? leftTitlesInterval,
      double? gridHorizontalInterval,
      double? maxY,
      double? barAreaOpacity,
      double? touchedSpotIndicatorLineStrokeWidth,
      double? touchedSpotIndicatorStrokeWidth,
      double? gridStrokeWidth,
      List<int>? dashArray,

      // Text Styles
      TextStyle? axisTextStyle,
      TextStyle? selectedAxisTextStyle,
      TextStyle? leftAxisTextStyle,
      TextStyle? tooltipTextStyle,

      // Booleans
      bool? showBarArea,
      bool? showDots,
      bool? isCurved,
      bool? showGridLines,
      bool? drawHorizontalLine,
      bool? drawVerticalLine,
      bool? enabledTouch,
      bool? showTouchedSpotIndicators,
      bool? handleBuiltInTouches,
      bool? showBottomTitles,
      bool? showLeftTitles,
      bool? showTopTitles,
      bool? showRightTitles,
      bool? showLineChartBorder,
      bool? showTooltip,
      Border? lineChartBorder,
      AbstractLineChartAxisFormatter? lineChartAxisFormatter}) {
    return KILineChartProperties(
        // Numeric
        lineWidth: lineWidth ?? this.lineWidth,
        dotRadius: dotRadius ?? this.dotRadius,
        bottomTitlesInterval: bottomTitlesInterval ?? this.bottomTitlesInterval,
        leftTitlesInterval: leftTitlesInterval ?? this.leftTitlesInterval,
        gridHorizontalInterval:
            gridHorizontalInterval ?? this.gridHorizontalInterval,
        maxY: maxY ?? this.maxY,
        tooltipFontSize: tooltipFontSize ?? this.tooltipFontSize,
        axisFontSize: axisFontSize ?? this.axisFontSize,
        touchedSpotIndicatorLineStrokeWidth:
            touchedSpotIndicatorLineStrokeWidth ??
                this.touchedSpotIndicatorLineStrokeWidth,
        touchedSpotIndicatorStrokeWidth: touchedSpotIndicatorStrokeWidth ??
            this.touchedSpotIndicatorStrokeWidth,
        gridStrokeWidth: gridStrokeWidth ?? this.gridStrokeWidth,

        // Text Styles
        axisTextStyle: axisTextStyle ?? this.axisTextStyle,
        selectedAxisTextStyle:
            selectedAxisTextStyle ?? this.selectedAxisTextStyle,
        leftAxisTextStyle: leftAxisTextStyle ?? this.leftAxisTextStyle,
        tooltipTextStyle: tooltipTextStyle ?? this.tooltipTextStyle,

        // Booleans
        showBarArea: showBarArea ?? this.showBarArea,
        showDots: showDots ?? this.showDots,
        isCurved: isCurved ?? this.isCurved,
        showGridLines: showGridLines ?? this.showGridLines,
        drawHorizontalLine: drawHorizontalLine ?? this.drawHorizontalLine,
        drawVerticalLine: drawVerticalLine ?? this.drawVerticalLine,
        enabledTouch: enabledTouch ?? this.enabledTouch,
        showTouchedSpotIndicators:
            showTouchedSpotIndicators ?? this.showTouchedSpotIndicators,
        handleBuiltInTouches: handleBuiltInTouches ?? this.handleBuiltInTouches,
        showBottomTitles: showBottomTitles ?? this.showBottomTitles,
        showLeftTitles: showLeftTitles ?? this.showLeftTitles,
        showTopTitles: showTopTitles ?? this.showTopTitles,
        showRightTitles: showRightTitles ?? this.showRightTitles,
        showLineChartBorder: showLineChartBorder ?? this.showLineChartBorder,
        showTooltip: showTooltip ?? this.showTooltip,
        lineChartBorder: lineChartBorder ?? this.lineChartBorder,
        dashArray: dashArray ?? this.dashArray,
        lineChartAxisFormatter:
            lineChartAxisFormatter ?? this.lineChartAxisFormatter);
  }

  // ---------------------------------------------------------------------------
  // lerp
  // Typically, booleans are not animated. We'll use a naive approach:
  // if t < 0.5 => a; else => b. If both null => null.
  // ---------------------------------------------------------------------------
  @override
  KILineChartProperties lerp(
      ThemeExtension<KILineChartProperties>? other, double t) {
    if (other is! KILineChartProperties) return this;

    return KILineChartProperties(
        // Numeric
        lineWidth: _lerpDoubleOrNull(lineWidth, other.lineWidth, t),
        dotRadius: _lerpDoubleOrNull(dotRadius, other.dotRadius, t),
        bottomTitlesInterval: _lerpDoubleOrNull(
            bottomTitlesInterval, other.bottomTitlesInterval, t),
        leftTitlesInterval:
            _lerpDoubleOrNull(leftTitlesInterval, other.leftTitlesInterval, t),
        gridHorizontalInterval: _lerpDoubleOrNull(
          gridHorizontalInterval,
          other.gridHorizontalInterval,
          t,
        ),
        maxY: _lerpDoubleOrNull(maxY, other.maxY, t),
        touchedSpotIndicatorStrokeWidth: _lerpDoubleOrNull(
            touchedSpotIndicatorStrokeWidth,
            other.touchedSpotIndicatorStrokeWidth,
            t),
        touchedSpotIndicatorLineStrokeWidth: _lerpDoubleOrNull(
            touchedSpotIndicatorLineStrokeWidth,
            other.touchedSpotIndicatorLineStrokeWidth,
            t),
        tooltipFontSize:
            _lerpDoubleOrNull(tooltipFontSize, other.tooltipFontSize, t),
        axisFontSize: _lerpDoubleOrNull(axisFontSize, other.axisFontSize, t),
        gridStrokeWidth:
            _lerpDoubleOrNull(gridStrokeWidth, other.gridStrokeWidth, t),

        // Text Styles
        axisTextStyle: other.axisTextStyle,
        selectedAxisTextStyle: other.selectedAxisTextStyle,
        leftAxisTextStyle: other.leftAxisTextStyle,
        tooltipTextStyle: other.tooltipTextStyle,

        // Booleans
        showBarArea: _lerpBoolOrNull(showBarArea, other.showBarArea, t),
        showDots: _lerpBoolOrNull(showDots, other.showDots, t),
        isCurved: _lerpBoolOrNull(isCurved, other.isCurved, t),
        showGridLines: _lerpBoolOrNull(showGridLines, other.showGridLines, t),
        drawHorizontalLine:
            _lerpBoolOrNull(drawHorizontalLine, other.drawHorizontalLine, t),
        drawVerticalLine:
            _lerpBoolOrNull(drawVerticalLine, other.drawVerticalLine, t),
        enabledTouch: _lerpBoolOrNull(enabledTouch, other.enabledTouch, t),
        showTouchedSpotIndicators: _lerpBoolOrNull(
          showTouchedSpotIndicators,
          other.showTouchedSpotIndicators,
          t,
        ),
        handleBuiltInTouches: _lerpBoolOrNull(
            handleBuiltInTouches, other.handleBuiltInTouches, t),
        showBottomTitles:
            _lerpBoolOrNull(showBottomTitles, other.showBottomTitles, t),
        showLeftTitles:
            _lerpBoolOrNull(showLeftTitles, other.showLeftTitles, t),
        showTopTitles: _lerpBoolOrNull(showTopTitles, other.showTopTitles, t),
        showRightTitles:
            _lerpBoolOrNull(showRightTitles, other.showRightTitles, t),
        showLineChartBorder:
            _lerpBoolOrNull(showLineChartBorder, other.showLineChartBorder, t),
        showTooltip: _lerpBoolOrNull(showTooltip, other.showTooltip, t),
        lineChartBorder: other.lineChartBorder,
        dashArray: other.dashArray,
        lineChartAxisFormatter: other.lineChartAxisFormatter);
  }

  // ---------------------------------------------------------------------------
  // Helper functions
  // ---------------------------------------------------------------------------
  double? _lerpDoubleOrNull(double? a, double? b, double t) {
    if (a == null && b == null) return null;
    final aVal = a ?? 0;
    final bVal = b ?? 0;
    return aVal + (bVal - aVal) * t;
  }

  bool? _lerpBoolOrNull(bool? a, bool? b, double t) {
    // If both are null => null
    if (a == null && b == null) return null;
    // If only one is null => pick the one that isn't null
    if (a == null) return b;
    if (b == null) return a;

    // Otherwise, "interpolate" based on t:
    // t < 0.5 => keep a, else => keep b
    // Realistically, booleans aren't often animated, but we'll do a naive approach.
    return t < 0.5 ? a : b;
  }

  // ---------------------------------------------------------------------------
  // debugFillProperties
  // ---------------------------------------------------------------------------
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);

    properties
      // Numeric
      ..add(DoubleProperty("lineWidth", lineWidth, defaultValue: null))
      ..add(DoubleProperty("dotRadius", dotRadius, defaultValue: null))
      ..add(DoubleProperty("bottomTitlesInterval", bottomTitlesInterval,
          defaultValue: null))
      ..add(DoubleProperty("leftTitlesInterval", leftTitlesInterval,
          defaultValue: null))
      ..add(DoubleProperty("gridHorizontalInterval", gridHorizontalInterval,
          defaultValue: null))
      ..add(DoubleProperty("maxY", maxY, defaultValue: null))
      ..add(DoubleProperty("tooltipFontSize", tooltipFontSize,
          defaultValue: null))
      ..add(DoubleProperty("touchedSpotIndicatorLineStrokeWidth",
          touchedSpotIndicatorLineStrokeWidth,
          defaultValue: null))
      ..add(DoubleProperty(
          "touchedSpotIndicatorStrokeWidth", touchedSpotIndicatorStrokeWidth,
          defaultValue: null))
      ..add(DoubleProperty("axisFontSize", axisFontSize, defaultValue: null))
      ..add(DoubleProperty("gridStrokeWidth", gridStrokeWidth,
          defaultValue: null))

      // Text Styles
      ..add(DiagnosticsProperty<TextStyle>("axisTextStyle", axisTextStyle))
      ..add(DiagnosticsProperty<TextStyle>(
          "selectedAxisTextStyle", selectedAxisTextStyle))
      ..add(DiagnosticsProperty<TextStyle>(
          "leftAxisTextStyle", leftAxisTextStyle))
      ..add(
          DiagnosticsProperty<TextStyle>("tooltipTextStyle", tooltipTextStyle))

      // Booleans
      ..add(FlagProperty('showBarArea',
          value: showBarArea == true, ifTrue: 'showBarArea = true'))
      ..add(FlagProperty('showDots',
          value: showDots == true, ifTrue: 'showDots = true'))
      ..add(FlagProperty('isCurved',
          value: isCurved == true, ifTrue: 'isCurved = true'))
      ..add(FlagProperty('showGridLines',
          value: showGridLines == true, ifTrue: 'showGridLines = true'))
      ..add(FlagProperty('drawHorizontalLine',
          value: drawHorizontalLine == true,
          ifTrue: 'drawHorizontalLine = true'))
      ..add(FlagProperty('drawVerticalLine',
          value: drawVerticalLine == true, ifTrue: 'drawVerticalLine = true'))
      ..add(FlagProperty('enabledTouch',
          value: enabledTouch == true, ifTrue: 'enabledTouch = true'))
      ..add(FlagProperty('showTouchedSpotIndicators',
          value: showTouchedSpotIndicators == true,
          ifTrue: 'showTouchedSpotIndicators = true'))
      ..add(FlagProperty('handleBuiltInTouches',
          value: handleBuiltInTouches == true,
          ifTrue: 'handleBuiltInTouches = true'))
      ..add(FlagProperty('showBottomTitles',
          value: showBottomTitles == true, ifTrue: 'showBottomTitles = true'))
      ..add(FlagProperty('showLeftTitles',
          value: showLeftTitles == true, ifTrue: 'showLeftTitles = true'))
      ..add(FlagProperty('showTopTitles',
          value: showTopTitles == true, ifTrue: 'showTopTitles = true'))
      ..add(FlagProperty('showRightTitles',
          value: showRightTitles == true, ifTrue: 'showRightTitles = true'))
      ..add(FlagProperty('showLineChartBorder',
          value: showLineChartBorder == true, ifTrue: 'showRightTitles = true'))
      ..add(FlagProperty('showTooltip',
          value: showTooltip == true, ifTrue: 'showTooltip = true'))
      ..add((DiagnosticsProperty<Border>('lineChartBorder', lineChartBorder)))
      ..add(DiagnosticsProperty<List<int>>('dashArray', dashArray))
      ..add(DiagnosticsProperty<AbstractLineChartAxisFormatter>(
          "AbstractLineChartAxisFormatter", lineChartAxisFormatter));
  }
}
