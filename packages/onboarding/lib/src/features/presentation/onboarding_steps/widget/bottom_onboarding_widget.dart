import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/onboarding.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

import '../cubit/onboarding_steps_cubit.dart';

class BottomOnboardingWidget extends StatelessWidget {
  const BottomOnboardingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    OnboardingStepsCubit cubit = context.watch<OnboardingStepsCubit>();
    return AppContainer(
      padding: AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: context.colors.kiWhite,
      ),
      child: Column(
        children: [
          AppButton.primary(
            mainAxisSize: MainAxisSize.max,
            padding: AppEdgeInsets.none(),
            backgroundColor: context.colors.kiMain,
            title: cubit.getCurrentStepIndex() == 0
                ? context.boardingLocal.register
                : "${context.boardingLocal.continueTo}${getStepName(context, cubit)}",
            onTap: (cubit.authorizeShare())
                ? () {
                    context.router.push(SectionWrapperRoute(
                      stepId: cubit.onboardingSteps!
                          .steps![cubit.getCurrentStepIndex()].id!,
                    ));
                  }
                : null,
          ),
          AppGap.m(),
          if (cubit.getCurrentStepIndex() ==
              (cubit.onboardingSteps?.steps?.length ?? 0) - 1)
            MenuItemWidget(
              crossAxisAlignment: CrossAxisAlignment.start,
              padding: AppEdgeInsets.none(),
              leadingWidget: AppPadding(
                padding: AppEdgeInsets.only(right: AppGapSize.xs),
                child: KICheckbox(
                  activeColor: context.colors.kiMain,
                  value: cubit.authorizeShare(),
                  onChanged: (value) {
                    cubit.authShareDate(value);
                  },
                ),
              ),
              title: context.boardingLocal.authorizeSharePersonalInformation,
              titleTextStyle: AppTextStyle(
                  level: AppTextLevel.captionRegular,
                  color: context.colors.textBodyPrimary),
            ),
        ],
      ),
    );
  }

  String getStepName(BuildContext context, OnboardingStepsCubit cubit) {
    return "${(cubit.onboardingSteps!.steps![cubit.getCurrentStepIndex()].title)?.toLowerCase() ?? ''}";
  }
}
