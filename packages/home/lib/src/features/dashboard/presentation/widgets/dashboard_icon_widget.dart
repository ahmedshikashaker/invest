import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';




class DashboardIconWidget extends StatelessWidget {
  final Widget icon;

  const DashboardIconWidget({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: AppEdgeInsets.xs(),
      decoration: BoxDecoration(
        borderRadius: context.tokens.radius.asBorderRadius().medium,
        color: context.colors.kiWhite,
      ),
      child: icon,
    );
  }
}