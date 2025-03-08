import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/section.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

import 'package:onboarding/src/features/presentation/groups/widgets/ki_section_group_widget.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:onboarding/src/features/presentation/sections/widgets/ki_section_button.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';
import 'package:flutter/material.dart';

import '../widgets/ki_section_progress_bar.dart';

@RoutePage()
class KiSectionScreen extends StatelessWidget {
  final Section section;
  final PageRouteInfo? previousRoute;
  final PageRouteInfo? nextRoute;
  final String? stepTitle;
  final String? stepRank;

  const KiSectionScreen(
      {super.key,
      required this.section,
      this.previousRoute,
      this.nextRoute,
      this.stepTitle,
      this.stepRank});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SectionCubit>()..initSection(section),
      child: Builder(
        builder: (context) {
          return KIAppScaffold(
            backgroundColor: context.colors.kiLightBackground,
            appbar: (appBarController) {
              var cubit = context.read<SectionCubit>();
              return KIAppBarWidget(
                height: 175.rh,
                animationController: appBarController,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      stepRank ?? '',
                      color: AppColorsData.white,
                      level: AppTextLevel.bodyRegular,
                    ),
                    AppText(
                      stepTitle ?? '',
                      color: AppColorsData.white,
                      level: AppTextLevel.sublineHeavy,
                    ),
                  ],
                ),
                actions: [
                  InkWell(
                    onTap: () {
                      cubit.saveAndExit();
                    },
                    child: AppText(
                      context.boardingLocal.saveAndExit,
                      color: AppColorsData.white,
                      level: AppTextLevel.bodyRegular,
                    ),
                  )
                ],
                canPop: true,
                centeredTitle: AppText(
                  stepTitle ?? '',
                  color: AppColorsData.white,
                  level: AppTextLevel.bodyBold,
                ),
              );
            },
            body: (context, animationController, scrollController) => FormLayout(
              controller: scrollController,
              widgets: [
                KiSectionProgressBar(),
                AppGap.m(),
                ...section.groups
                    .map((group) => KISectionGroup(
                          group: group,
                        ))
                    .toList()
              ],
              button: KiSectionButton(
                nextRoute: nextRoute,
              ),
            ),
          );
        }
      ),
    );
  }
}
