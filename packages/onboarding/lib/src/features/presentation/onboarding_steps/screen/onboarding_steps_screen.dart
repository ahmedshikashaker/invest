import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:home/home.dart';
import 'package:kib_core/kib_core.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_cubit.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_state.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/widget/bottom_onboarding_widget.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/widget/steps_body_widget.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

@RoutePage()
class OnboardingStepsScreen extends StatelessWidget {
  const OnboardingStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OnboardingStepsCubit>()..getOnboardingSteps(),
      child: BlocBuilder<OnboardingStepsCubit, OnboardingStepsState>(
        builder: (ctx, state) {
          return KIAppScaffold(
            // backgroundColor: context.colors.kiLightBackground,
            appbar: (appBarController) => KIAppBarWidget(
              animationController: appBarController,
              title: AppText(
                context.boardingLocal.setUpYourProfile,
                color: AppColorsData.white,
                level: AppTextLevel.sublineHeavy,
              ),
              actions: [
                InkWell(
                  onTap: () {
                    context.router
                        .replaceNamed(HomeModuleRoutes.dashboardScreenPath);
                  },
                  child: AppIcon(
                    icon: Assets.icons.close,
                    color: AppColorsData.white,
                  ),
                )
              ],
              canPop: false,
              centeredTitle: AppText(""),
            ),
            body: (context, animationController, scrollController) =>
                state.mapOrNull(
              loadingOnboardingSteps: (_) => AppCircularProgressIndicator(),
              successfullyOnboardingSteps: (_) => Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: AppPadding(
                      padding: AppEdgeInsets.m(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText.bodyBold(
                            context.boardingLocal.shareYourDetailsToGetStarted,
                            color: context.colors.textHeading,
                          ),
                          AppGap.xxs(),
                          AppText.smallRegular(
                            context.boardingLocal.stepsDescription,
                            color: context.colors.textBodySecondary,
                          ),
                          AppGap.l(),
                          Expanded(child: StepsBodyWidget()),
                        ],
                      ),
                    ),
                  ),
                  BottomOnboardingWidget(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
