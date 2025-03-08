import 'package:home/src/l10n/extension/home_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';


class DashboardSetUpProfileHeader extends StatelessWidget {
  const DashboardSetUpProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.m),
      child: Row(
        children: [
          Expanded(
              child: AppText.bodyMedium(context.homeLocal.setup_profile_header,
                  color: context.colors.kiTextHeading)),
          GestureDetector(
            onTap: () {},
            child: AppText.captionBold(
              context.homeLocal.view_title,
              color: context.colors.actionableSecondary,
            ),
          ),
        ],
      ),
    );
  }
}