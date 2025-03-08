import 'package:kib_design_system/kib_design_system.dart';

class FundHighLightsModel {
  final SvgGenImage icon;
  final String title;
  final String subtitle;
  final String? packageName;

  FundHighLightsModel(
      {required this.icon, required this.title, required this.subtitle, this.packageName});
}
