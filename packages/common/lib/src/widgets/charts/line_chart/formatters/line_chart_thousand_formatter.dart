
import 'package:fl_chart/src/chart/base/axis_chart/axis_chart_data.dart';
import 'package:invest_common/src/widgets/charts/line_chart/formatters/abstract_line_chart_formatter.dart';
import 'package:common_dependencies/common_dependencies.dart';

class LineChartThousandFormatter extends AbstractLineChartAxisFormatter{
  @override
  String? format(double value, TitleMeta meta) {
    return  NumberFormat.decimalPattern("en").format(value);
  }

}