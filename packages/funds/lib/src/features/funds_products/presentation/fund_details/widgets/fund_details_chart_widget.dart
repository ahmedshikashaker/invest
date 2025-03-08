import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:common_dependencies/common_dependencies.dart';

class FundDetailsChartWidget extends StatelessWidget {
  const FundDetailsChartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundDetailsCubit>();
    final List<String> yearsLabels = cubit.fundDetailsResponse?.navHistory
            ?.map((e) => e.month ?? "")
            .toList() ??
        [];
    final List<FlSpot> yearsPoints = cubit.fundDetailsResponse?.navHistory
            ?.map((e) => FlSpot(
                cubit.fundDetailsResponse?.navHistory?.indexOf(e).toDouble() ??
                    0,
                e.nav ?? 0))
            .toList() ??
        [];
    return Column(
      children: [
        SectionHeader(
          context.fundsLocal.navPriceTitle,
          padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.xs),
        ),
        AppGap.m(),
        AppContainer(
          decoration: BoxDecoration(
              color: context.tokens.colors.kiWhite,
              borderRadius: context.tokens.radius.asBorderRadius().regular),
          padding: AppEdgeInsets.symmetric(
              horizontal: AppGapSize.xxl, vertical: AppGapSize.l),
          child: AspectRatio(
            aspectRatio: 2.3,
            child: KILineChart(
              yAxisPoints: yearsPoints,
              xAxisLabels: yearsLabels,
              showLeftTitles: false,
              showGridLines: true,
              drawHorizontalLine: true,
              drawVerticalLine: true,
              showBarArea: false,
              dashArray: [8, 4],
              gridStrokeWidth: .4,
              gridHorizontalInterval: 350,
              lineColor: AppColorsData.azure.shade300,
              backgroundColor: AppColorsData.shades.shade100,
              tooltipBackgroundColor: AppColorsData.shades.shade700,
              tooltipTextStyle:
                  context.tokens.typography.content.tinyBold.copyWith(
                color: AppColorsData.white,
              ),
              axisTextStyle:
                  context.tokens.typography.content.smallRegular.copyWith(
                color: context.tokens.colors.kiTextBodyPrimary,
              ),
              selectedAxisTextStyle:
                  context.tokens.typography.content.smallRegular.copyWith(
                color: context.tokens.colors.actionableSecondary,
              ),
              borderColor: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
