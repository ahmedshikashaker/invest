import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_cubit.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_state.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/widget/onboarding_paci_entry_point.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/widget/steps_body_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingUnAuthStepsScreen extends StatelessWidget {
  const OnboardingUnAuthStepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<OnboardingStepsCubit>()..getOnboardingSteps(),
      child: BlocBuilder<OnboardingStepsCubit, OnboardingStepsState>(
        builder: (ctx, state) {
          return KIAppScaffold(
            backgroundColor: context.colors.kiLightBackground,
            appbar: (appBarController) => KIAppBarWidget(
              animationController: appBarController,
              title: AppText(
                "Set up your profile",
                color: AppColorsData.white,
                level: AppTextLevel.sublineHeavy,
              ),
              canPop: false,
              centeredTitle: AppText(""),
              actions: [
                InkWell(
                  onTap: () {
                    context.router.replaceNamed(
                      "/dashboard-screen",
                    );
                  },
                  child: AppIcon(
                    icon: Assets.icons.close,
                    color: AppColorsData.white,
                  ),
                )
              ],
            ),
            body: (context, animationController, scrollController) =>
                state.maybeMap(
              loadingOnboardingSteps: (_) => AppCircularProgressIndicator(),
              orElse: () => AppContainer(
                padding: AppEdgeInsets.m(),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        AppGap.x26l(),
                        Expanded(
                          child: StepsBodyWidget(),
                        ),
                      ],
                    ),
                    Positioned.fill(
                        child: AppContainer(
                      decoration: BoxDecoration(
                          gradient: AppColorsData.createGradient(colors: [
                        context.colors.kiLightBackground.withOpacity(0.43),
                        context.colors.kiBackground.withOpacity(0.6)
                      ])),
                    )),
                    OnboardingPaciEntryPoint(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
