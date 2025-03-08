import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

import '../../../../config/end_points/onboarding_steps_end_points.dart';
import '../cubit/onboarding_steps_cubit.dart';
import '../data/models/step_model.dart';

class StepIconWidget extends StatelessWidget {
  const StepIconWidget({super.key, required this.step, required this.index});

  final StepModel step;
  final int index;

  @override
  Widget build(BuildContext context) {
    return KINetworkCircularAvatar(
      url: "${OnboardingStepsEndpoints.getIconEndPoint}${step.icon?.id}",
      iconSize: 19,
      iconColor: getIconColor(context, step, index),
      backgroundColor: getStepColor(context, step, index),
      border: Border.all(
        color: getBorderColor(context, step, index),
        width: context.read<OnboardingStepsCubit>().isCurrentStepPending(index)
            ? 1.5
            : 1,
      ),
    );
  }

  Color getBorderColor(BuildContext context, StepModel step, int index) {
    if (step.isCompleted == true) {
      return context.colors.success;
    }

    if (context.read<OnboardingStepsCubit>().allPreviousCompleted(index)) {
      return AppColorsData.azure[500]!;
    }

    return AppColorsData.azure[300]!;
  }

  Color getStepColor(BuildContext context, StepModel step, int index) {
    if (step.isCompleted == true) {
      return context.colors.success;
    }

    if (context.read<OnboardingStepsCubit>().allPreviousCompleted(index)) {
      return context.colors.kiBackground;
    }

    return Colors.transparent;
  }

  Color getIconColor(BuildContext context, StepModel step, int index) {
    if (step.isCompleted == true) {
      return context.colors.kiBackground;
    }

    if (context.read<OnboardingStepsCubit>().allPreviousCompleted(index)) {
      return AppColorsData.azure[500]!;
    }

    return AppColorsData.azure[300]!;
  }
}
