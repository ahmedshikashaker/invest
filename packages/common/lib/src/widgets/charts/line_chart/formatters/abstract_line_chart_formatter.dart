import 'package:fl_chart/fl_chart.dart';

abstract class AbstractLineChartAxisFormatter {
  String? format(double value, TitleMeta meta);
}
