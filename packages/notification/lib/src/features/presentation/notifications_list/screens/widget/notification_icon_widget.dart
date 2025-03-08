import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class NotificationIconWidget extends StatelessWidget {
  const NotificationIconWidget({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return AppCategoryIcon(
      size: size,
      // backgroundColor: KIBInvestColors.baseLight,
      icon: AppIcon(
        icon: Assets.icons.notification,
        size: size / 2,
        color: AppColorsData.shades.shade900,
      ),
    );
  }
}
