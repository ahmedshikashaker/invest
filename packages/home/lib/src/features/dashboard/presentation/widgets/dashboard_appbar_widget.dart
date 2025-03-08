import 'package:home/src/features/dashboard/presentation/widgets/dashboard_icon_widget.dart';
import 'package:home/src/l10n/extension/home_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:authentication/authentication.dart';

class DashboardAppBarWidget extends StatelessWidget {
  const DashboardAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: context.colors.kiWhite,
          child: Assets.icons.avatarProfile.svg(
              package: "kib_design_system",
              color: AppColorsData.shades.shade200,
              width: 60.rw,
              height: 60.rh),
        ),
        AppGap.xs(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText.captionRegular(
                context.homeLocal.good_morning_title,
                color: context.colors.kiTextHeading,
              ),
              AppText.bodyBold(
                "#145258",
                color: context.colors.kiTextHeading,
              ),
            ],
          ),
        ),
        DashboardIconWidget(
            icon: Assets.icons.bellNotification.svg(
                package: "kib_design_system",
                color: context.colors.kiTextHeading)),

        AppGap.s(),
        InkWell(
          onTap: (){
            context.router.replaceAll([
              LandingRouteRoute(),
              LoginRoute()]);
          },
          child: DashboardIconWidget(
            icon: Assets.icons.logout.svg(
                package: "kib_design_system",
                color: context.colors.kiTextHeading),
          ),
        )
      ],
    );
  }
}