import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

import '../cubit/onboarding_steps_cubit.dart';
import 'dotted_line_widget.dart';
import 'step_icon_widget.dart';
import 'step_title_widget.dart';

class StepsBodyWidget extends StatelessWidget {
  const StepsBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<OnboardingStepsCubit>();

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: AppStepper.tileBuilder(
          theme: StepperThemeData(
            direction: Axis.vertical,
            connectorTheme:
            const ConnectorThemeData(space: 1.0, thickness: 1.0),
          ),
          builder: StepperTileBuilder(
            itemCount: cubit.onboardingSteps?.steps?.length ?? 0,
            oppositeContentsBuilder: (context, index) =>
            const AppContainer(),
            contentsBuilder: (context, index) => StepTitleWidget(
                index: index,
                step: cubit.onboardingSteps!.steps![index],
                onTap: () => context.router.push(SectionWrapperRoute(
                  stepId: cubit.onboardingSteps!.steps![index].id!,

                  // cubit.getCurrentStepIndex() == index &&
                  //         cubit.authorizeShare()
                  //     ? () {
                  //         context.router.push(SectionWrapperRoute(
                  //           stepId: cubit.onboardingSteps!.steps![index].id!,
                  //         ));
                  //       }
                  //     : null,
                ))),
            indicatorBuilder: (_, index) {
              return StepIconWidget(
                step: cubit.onboardingSteps!.steps![index],
                index: index,
              );
            },
            startConnectorBuilder: cubit
                .createConnectedStartConnectorBuilder(
                connectorBuilder: (index) {
                  if (index == 0 ||
                      index == cubit.onboardingSteps!.steps!.length) {
                    return const AppContainer();
                  }
                  return AppPadding(
                    padding: AppEdgeInsets.only(bottom: AppGapSize.xs),
                    child: DottedLine(
                      dotCount: 2,
                      dotColor: context.tokens.themeMode == ThemeMode.dark
                          ? context.tokens.colors.success
                          : AppColorsData.azure[300]!,
                    ),
                  );
                }),
            endConnectorBuilder: cubit.createConnectedEndConnectorBuilder(
                itemCount: cubit.onboardingSteps?.steps?.length ?? 0,
                connectorBuilder: (index) {
                  if (index == 0 ||
                      index == cubit.onboardingSteps!.steps!.length) {
                    return const AppContainer();
                  }
                  return AppPadding(
                    padding: AppEdgeInsets.only(top: AppGapSize.xs),
                    child: DottedLine(
                      dotCount: 2,
                      dotColor: context.tokens.themeMode == ThemeMode.dark
                          ? context.tokens.colors.success
                          : AppColorsData.azure[300]!,
                    ),
                  );
                }),
            nodePositionBuilder: (index) => 0.0,
          )),
    );
  }
}
