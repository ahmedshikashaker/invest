import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/on_boarding/cubit/on_boarding_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';

class OnBoardingBottomWidget extends StatelessWidget {
  final List<OnBoardingItem> boardings;

  const OnBoardingBottomWidget({super.key, required this.boardings});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<OnBoardingCubit>();
    return AppPadding(
      padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.xxl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          WelcomeToInvestText(
            title: boardings[cubit.boardingIndex].title,
            description: boardings[cubit.boardingIndex].description,
          ),
          AppGap.m(),
          Visibility(
            visible: cubit.boardingIndex != boardings.length - 1,
            child: InkWell(
              onTap: () {
                navigateToLandingPage(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AppText.captionBold(
                    context.authLocal.skip,
                    color: AppColorsData.white,
                  )
                ],
              ),
            ),
          ),
          const AppGap.xl(),
          Visibility(
            visible: cubit.boardingIndex == boardings.length - 1,
            child: AppButton.contrast(
              mainAxisSize: MainAxisSize.max,
              title: context.authLocal.getStarted,
              titleColor: context.contrastButtonTheme.colors.textButtonColor,
              onTap: () {
                navigateToLandingPage(context);
              },
            ),
            replacement: OnBoardingDotsList(
              boardings: boardings,
            ),
          ),
          const AppGap.x5l(),
        ],
      ),
    );
  }

  void navigateToLandingPage(BuildContext context) {
    context.router.replaceNamed(AuthenticationModuleRoutes.landingPagePath);
    context.firstEnter = false;
  }
}
