import 'package:fl_chart/fl_chart.dart';
import 'package:invest_common/src/widgets/charts/line_chart/formatters/abstract_line_chart_formatter.dart';
import 'package:kib_design_system/kib_design_system.dart';

// titles_data_helper.dart
class TitlesDataHelper {
  static FlTitlesData generateTitlesData({
    required List<String> monthLabels,
    required double? selectedX,
    required void Function(double x) onLabelTapped,
    required double? bottomTitlesInterval,
    required double? leftTitlesInterval,
    required bool? showBottomTitles,
    required bool? showLeftTitles,
    required bool? showTopTitles,
    required bool? showRightTitles,
    required TextStyle? axisTextStyle,
    required TextStyle? selectedAxisTextStyle,
    required TextStyle? leftAxisTextStyle,
    required AbstractLineChartAxisFormatter? lineChartAxisFormatter,
  }) {
    return FlTitlesData(
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: showTopTitles ?? false),
      ),
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: showRightTitles ?? false),
      ),
      bottomTitles: AxisTitles(

        sideTitles: SideTitles(
          showTitles: showBottomTitles ?? false,
          reservedSize: 30,

          interval: bottomTitlesInterval,
          getTitlesWidget: (value, meta) {
            if (value == value.roundToDouble()) {
              final index = value.toInt();
              if (index >= 0 && index < monthLabels.length) {
                final isSelected = selectedX == index.toDouble();
                return GestureDetector(
                  onTap: () => onLabelTapped(index.toDouble()),
                  child: AppPadding(
                    padding:AppEdgeInsets.only(top: AppGapSize.xs),
                    child: AppText(
                      monthLabels[index],
                      style: AppTextStyle(style:isSelected
                              ? selectedAxisTextStyle
                              : axisTextStyle),
                    ),
                  ),
                );
              }
            }
            return const SizedBox.shrink();
          },
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: showLeftTitles ?? false,
          reservedSize: 30,
          interval: leftTitlesInterval,
          getTitlesWidget: (value, meta) {
              return AppText(
                lineChartAxisFormatter?.format(value, meta)??'',
                style: AppTextStyle(style:  leftAxisTextStyle),
              );
          },
        ),
      ),
    );
  }
}
