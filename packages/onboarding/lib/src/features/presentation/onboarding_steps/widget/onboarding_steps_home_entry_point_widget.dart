import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/onboarding.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_state.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

import 'step_icon_widget.dart';

class OnboardingStepsHomeEntryPointWidget extends StatelessWidget {
  const OnboardingStepsHomeEntryPointWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnboardingStepsCubit>(
        create: (context) =>
            getIt<OnboardingStepsCubit>()..getOnboardingSteps(),
        child: BlocConsumer<OnboardingStepsCubit, OnboardingStepsState>(
          listener: (context, state) {},
          builder: (context, state) {
            final cubit = context.watch<OnboardingStepsCubit>();
            return state.maybeWhen(
                loadingOnboardingSteps: () => AppCircularProgressIndicator(),
                successfullyOnboardingSteps: () => AppContainer(
                      height: 162.rh,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: cubit.onboardingSteps?.steps?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return AppContainer(
                            margin: AppEdgeInsets.only(
                                left: AppGapSize.m,
                                right: index ==
                                        (cubit.onboardingSteps?.steps?.length ??
                                                0) -
                                            1
                                    ? AppGapSize.s
                                    : AppGapSize.none),
                            child: KIOnboardingItem(
                              height: 160.rh,
                              state: cubit.isCurrentStepPending(index)
                                  ? OnboardingItemState.active
                                  : OnboardingItemState.inactive,
                              title:
                                  cubit.onboardingSteps?.steps?[index].title ??
                                      "",
                              statusTitle: getStepStatus(cubit, index, context),
                              progressIndicator: KIProgressIndicator(
                                  progress: ((cubit.onboardingSteps
                                                  ?.steps?[index].progress ??
                                              0) /
                                          100)
                                      .toDouble()),
                              avatar: StepIconWidget(
                                step: cubit.onboardingSteps!.steps![index],
                                index: index,
                              ),
                              onTap: cubit.getCurrentStepIndex() == index
                                  ? () {
                                      context.router.push(SectionWrapperRoute(
                                        stepId: cubit
                                            .onboardingSteps!.steps![index].id!,
                                      ));
                                    }
                                  : null,
                            ),
                          );
                        },
                      ),
                    ),
                orElse: () => AppContainer());
          },
        ));
  }

  String getStepStatus(
      OnboardingStepsCubit cubit, int index, BuildContext context) {
    if (cubit.isCurrentStepPending(index)) {
      return context.boardingLocal.complete;
    } else if (cubit.onboardingSteps!.steps![index].isCompleted == true) {
      return context.boardingLocal.completed;
    }
    return context.boardingLocal.start;
  }
}
