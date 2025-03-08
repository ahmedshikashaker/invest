import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/data/models/field.dart';

class KiLinkWidget extends StatelessWidget {
  final LinkField field;

  const KiLinkWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return MenuItemWidget(
      title: field.placeholder ?? '',
      titleTextStyle: AppTextStyle(
        color: context.colors.kiMain,
        level: AppTextLevel.captionMedium,
      ),
      trailing: Assets.icons.chevronRight,
      onTap: () {},
    );
  }
}
