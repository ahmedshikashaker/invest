import 'package:auto_route/auto_route.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/onboarding.dart';
import 'package:funds/funds.dart';

@RoutePage()
class TempScreen extends StatelessWidget {
  const TempScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> monthLabels = const [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun'
    ];
    final List<FlSpot> dataPoints = const [
      FlSpot(0, 800), // Jan
      FlSpot(1, 1800), // Feb
      FlSpot(2, 1000), // Mar
      FlSpot(3, 3000), // Apr
      FlSpot(4, 1200), // May
      FlSpot(5, 2500), // Jun
    ];

    final List<String> yearsLabels = const [
      '2022',
      '2023',
      '2024',
      '2025'
    ];
    final List<FlSpot> yearsPoints = const [
      FlSpot(0, 400), // Jan
      FlSpot(1, 800), // Feb
      FlSpot(2, 400), // Mar
      FlSpot(3, 1000), // Mar
    ];
    return AppScaffold(
        body: AppContainer(
      decoration: BoxDecoration(color: AppColorsData.azure.shade100),
      child: SafeArea(
          child: AppPadding(
        padding: AppEdgeInsets.m(),
        child: ListView(
          shrinkWrap: true,
          children: [
            AppButton.primary(
              title: "Funds Screen",
              onTap: ()=> context.router.push(FundsListRoute()),
            ),
            AppGap.xxl(),
            Row(
              children: [
                KIOnboardingItem(
                    statusTextStyle: AppTextStyle(
                        level: AppTextLevel.tinyBold,
                        color: context.tokens.colors.textBodyPrimary),
                    title: "Personal profile",
                    statusTitle: "Completed",
                    progressIndicator: KIProgressIndicator(
                      progress: 1,
                      height: 4.rh,
                    ),
                    avatar: KICircularAvatar(
                      icon: Assets.icons.check,
                      iconColor: AppColorsData.white,
                      backgroundColor: AppColorsData.sea.shade500,
                      border: Border.all(color: AppColorsData.sea.shade300),
                    )),
                AppGap.m(),
                KIOnboardingItem(
                    state: OnboardingItemState.active,
                    title: "Financial profile",
                    statusTitle: "Complete",
                    progressIndicator: KIProgressIndicator(
                      progress: 0.6,
                      height: 4.rh,
                      progressColor: context.tokens.colors.actionableSecondary,
                    ),
                    avatar: KICircularAvatar(icon: Assets.icons.financial)),
                AppGap.m(),
                KIOnboardingItem(
                    state: OnboardingItemState.inactive,
                    title: "Suitability and risk check",
                    statusTitle: "start",
                    statusTextStyle: AppTextStyle(
                        level: AppTextLevel.tinyBold,
                        color: context.tokens.colors.textBodyPrimary),
                    progressIndicator: KIProgressIndicator(
                      progress: 0,
                      height: 4.rh,
                      progressColor: context.tokens.colors.actionableSecondary,
                    ),
                    avatar: KICircularAvatar(icon: Assets.icons.financial)),
              ],
            ),
            Column(
              children: [
                AppGap.x5l(),
                AppContainer(
                  decoration: BoxDecoration(
                      color: context.tokens.colors.surface,
                      borderRadius: BorderRadius.circular(8)),
                  padding: AppEdgeInsets.m(),
                  margin: AppEdgeInsets.m(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColorsData.azure.shade100,
                            ),
                          ),
                          AppGap.xs(),
                          AppText.captionMedium(
                            "KD Islamic Money Market Fund",
                            color: context.tokens.colors.textBodyPrimary,
                            fontSize: 14,
                          ),
                        ],
                      ),
                      AppGap.m(),
                      Container(
                          height: 301,
                          child: KILineChart(
                            yAxisPoints: dataPoints,
                            xAxisLabels: monthLabels,
                          ))
                    ],
                  ),
                ),
                AppContainer(
                  width: 181,
                  child: AppContainer(
                    decoration: BoxDecoration(
                        color: context.tokens.colors.surface,
                        borderRadius: BorderRadius.circular(8)),
                    padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.l , vertical: AppGapSize.s),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText.smallRegular("Nav update"),
                        AppText.captionBold("February"),
                        AspectRatio(
                          aspectRatio: 1.4,
                          child: AppContainer(
                            height: 60,
                            child: KILineChart(
                              yAxisPoints: dataPoints,
                              xAxisLabels: monthLabels,
                              showLeftTitles: false,
                              showGridLines: false,
                              spotIndicatorBorderColor: AppColorsData.black,
                              showTooltip: false,
                              axisTextStyle: context
                                  .tokens.typography.content.smallRegular
                                  .copyWith(
                                  color:
                                  context.tokens.colors.textBodyPrimary,
                                  fontSize: 6),
                              selectedAxisTextStyle: context
                                  .tokens.typography.content.smallRegular
                                  .copyWith(
                                  color:
                                  context.tokens.colors.textBodyPrimary,
                                  fontSize: 6),
                              borderColor: context.colors.textBodyPrimary,

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppContainer(
                  decoration: BoxDecoration(
                      color: context.tokens.colors.surface,
                      borderRadius: BorderRadius.circular(8)),
                  padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.l , vertical: AppGapSize.s),
                  margin: AppEdgeInsets.m(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 2.4,
                        child: KILineChart(
                          yAxisPoints: yearsPoints,
                          xAxisLabels: yearsLabels,
                          showLeftTitles: false,
                          showGridLines: true,
                          drawHorizontalLine:true,
                          drawVerticalLine: true,
                          showBarArea: false,
                          dashArray: [8,4],
                          gridStrokeWidth: .4,
                          gridHorizontalInterval: 350,
                          lineColor: AppColorsData.azure.shade300,
                          backgroundColor: AppColorsData.shades.shade100,
                          tooltipBackgroundColor: Color(0xFF394D60),
                          tooltipTextStyle: context.tokens.typography.content.tinyBold.copyWith(color: AppColorsData.white),
                          axisTextStyle: context
                              .tokens.typography.content.smallRegular
                              .copyWith(
                            color:
                            context.tokens.colors.textBodyPrimary,),
                          selectedAxisTextStyle: context
                              .tokens.typography.content.smallRegular
                              .copyWith(
                            color:
                            context.tokens.colors.textBodyPrimary,),
                          borderColor: Colors.transparent,

                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            AppGap.xxl(),
            // GestureDetector(
            //   onTap: () {
            //     context.router.push(OnboardingStepsRoute());
            //   },
            //   child: Text("Go To Onboarding"),
            // ),
            AppGap.xxl(),
            KIAccountCard(
              titleText: 'Current account',
              subTitleText: '•••• 4321 1235',
              iconWidget: KIAccountIconWidget(),
              trailingWidget: IntrinsicHeight(
                child: Column(
                  children: [
                    Expanded(
                      child: AppContainer(
                        alignment: Alignment.topCenter,
                        height: 20,
                        width: 20,
                        padding: AppEdgeInsets.xxs(),
                        decoration: BoxDecoration(
                          color: AppColorsData.categorySea,
                          borderRadius: context.radius.asBorderRadius().regular,
                          border: Border.all(color: AppColorsData.categorySea),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    ));
  }

}


