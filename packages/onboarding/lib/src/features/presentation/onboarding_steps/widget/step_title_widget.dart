import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/presentation/onboarding_steps/cubit/onboarding_steps_cubit.dart';

import '../data/models/step_model.dart';

class StepTitleWidget extends StatelessWidget {
  const StepTitleWidget(
      {super.key, required this.index, required this.step, this.onTap});

  final int index;
  final StepModel step;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null ? () => onTap!() : null,
      child: AppContainer(
        width: double.infinity,
        margin: const AppEdgeInsets.only(
          left: AppGapSize.s,
          top: AppGapSize.xs,
          bottom: AppGapSize.xs,
        ),
        padding: const AppEdgeInsets.only(
          left: AppGapSize.s,
          top: AppGapSize.s,
          bottom: AppGapSize.s,
          right: AppGapSize.xs,
        ),
        decoration: BoxDecoration(
          color: context.colors.kiWhite,
          border: Border.all(
            color:
                context.read<OnboardingStepsCubit>().isCurrentStepPending(index)
                    ? AppColorsData.azure[500]!
                    : context.colors.background,
            width:
                context.read<OnboardingStepsCubit>().isCurrentStepPending(index)
                    ? 1.5
                    : 1,
          ),
          borderRadius: context.radius.asBorderRadius().regular,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppRichTextWidget(
                  texts: [
                    AppText.captionRegular(
                      "${step.name}: ",
                      color: context.colors.textBodyPrimary,
                    ),
                    AppText.captionMedium(
                      step.title ?? '',
                      color: context.colors.textBodyPrimary,
                    ),
                  ],
                ),
                AppText.smallRegular(
                  step.description ?? '',
                  color: context.colors.textBodySecondary,
                ),
              ],
            ),
            if (step.isCompleted == true)
              AppIcon(
                icon: Assets.icons.checkCircleFilled,
                color: context.colors.success,
              )
          ],
        ),
      ),
    );
  }
}
