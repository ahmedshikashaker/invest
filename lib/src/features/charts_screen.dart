
import 'package:auto_route/auto_route.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

@RoutePage()
class ChartsScreen extends StatelessWidget {
  const ChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}


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