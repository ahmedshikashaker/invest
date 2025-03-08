import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

@immutable
class KILineChartColors extends ThemeExtension<KILineChartColors>
    with DiagnosticableTreeMixin {
  final Color? lineColor;
  final Color? backgroundColor;
  final Color? tooltipBackgroundColor;
  final Color? selectedDotColor;
  final Color? gridLineColor;
  final Color? borderColor;
  final Color? spotIndicatorBorderColor;
  final Gradient? barAreaGradient;

  const KILineChartColors(
      {this.lineColor,
      this.backgroundColor,
      this.tooltipBackgroundColor,
      this.selectedDotColor,
      this.gridLineColor,
      this.borderColor,
      this.barAreaGradient,
      this.spotIndicatorBorderColor});

  @override
  KILineChartColors copyWith({
    Color? lineColor,
    Color? backgroundColor,
    Color? tooltipBackgroundColor,
    Color? selectedDotColor,
    Color? gridLineColor,
    Color? borderColor,
    Color? spotIndicatorBorderColor,
    Gradient? barAreaGradient,
  }) {
    return KILineChartColors(
        lineColor: lineColor ?? this.lineColor,
        backgroundColor: backgroundColor ?? this.backgroundColor,
        tooltipBackgroundColor:
            tooltipBackgroundColor ?? this.tooltipBackgroundColor,
        selectedDotColor: selectedDotColor ?? this.selectedDotColor,
        gridLineColor: gridLineColor ?? this.gridLineColor,
        borderColor: borderColor ?? this.borderColor,
        barAreaGradient: barAreaGradient ?? this.barAreaGradient,
        spotIndicatorBorderColor:
            spotIndicatorBorderColor ?? this.spotIndicatorBorderColor);
  }

  @override
  KILineChartColors lerp(ThemeExtension<KILineChartColors>? other, double t) {
    if (other is! KILineChartColors) return this;

    return KILineChartColors(
      lineColor: Color.lerp(lineColor, other.lineColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      tooltipBackgroundColor:
          Color.lerp(tooltipBackgroundColor, other.tooltipBackgroundColor, t),
      selectedDotColor: Color.lerp(selectedDotColor, other.selectedDotColor, t),
      gridLineColor: Color.lerp(gridLineColor, other.gridLineColor, t),
      borderColor: Color.lerp(borderColor, other.borderColor, t),
      spotIndicatorBorderColor: Color.lerp(
          spotIndicatorBorderColor, other.spotIndicatorBorderColor, t),
      barAreaGradient: _lerpGradient(barAreaGradient, other.barAreaGradient, t),
    );
  }

  /// Naive approach to lerping two Gradients (works best if both are `LinearGradient`).
  Gradient? _lerpGradient(Gradient? a, Gradient? b, double t) {
    if (a == null && b == null) return null;
    if (a == null) return b;
    if (b == null) return a;

    if (a is LinearGradient && b is LinearGradient) {
      final aColors = a.colors;
      final bColors = b.colors;
      final length = math.min(aColors.length, bColors.length);
      final lerpedColors = <Color>[];
      for (int i = 0; i < length; i++) {
        lerpedColors.add(Color.lerp(aColors[i], bColors[i], t) ?? aColors[i]);
      }
      return LinearGradient(
        begin: a.begin,
        end: a.end,
        colors: lerpedColors,
        stops: a.stops ?? b.stops,
        transform: a.transform ?? b.transform,
      );
    }
    // If they're different gradient types or color lengths, pick one side
    return (t < 0.5) ? a : b;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty("lineColor", lineColor, defaultValue: null))
      ..add(
          ColorProperty("backgroundColor", backgroundColor, defaultValue: null))
      ..add(ColorProperty("tooltipBackgroundColor", tooltipBackgroundColor,
          defaultValue: null))
      ..add(ColorProperty("selectedDotColor", selectedDotColor,
          defaultValue: null))
      ..add(ColorProperty("gridLineColor", gridLineColor, defaultValue: null))
      ..add(ColorProperty("borderColor", borderColor, defaultValue: null))
      ..add(ColorProperty("spotIndicatorBorderColor", spotIndicatorBorderColor,
          defaultValue: null))
      ..add(DiagnosticsProperty<Gradient>("barAreaGradient", barAreaGradient,
          defaultValue: null));
  }
}
