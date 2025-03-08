import 'package:funds/src/features/funds_products/data/models/fund_highlights_model.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_highlight_grid_widget.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

class FundDetailsHighlightWidget extends StatelessWidget {
  const FundDetailsHighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundDetailsCubit>();
    return Column(
      children: [
        SectionHeader(
          context.fundsLocal.highlightsTitle,
          textColor: context.colors.kiTextHeading,
          padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.xs),
        ),
        AppGap.m(),
        FundDetailsHighlightGridWidget(
          fundHighLightsList: [
            FundHighLightsModel(
                icon: Assets.icons.moneyBag,
                title: context.fundsLocal.fundManagerTitle,
                subtitle: cubit.fundDetailsResponse?.fundManager ?? "-"),
            FundHighLightsModel(
                icon: Assets.icons.transfer,
                title: context.fundsLocal.minInvestmentTitle,
                subtitle:
                    "${cubit.fundDetailsResponse?.minInvestment.formatWithoutDecimalPoints ?? "-"} KWD"
                        .ltr),
            FundHighLightsModel(
                icon: Assets.icons.transferSharePaymentRequest,
                title: context.fundsLocal.liquidityTitle,
                subtitle: cubit.fundDetailsResponse?.liquidityValue ?? "-"),
            FundHighLightsModel(
                icon: Assets.icons.documentUpload,
                title: context.fundsLocal.inceptionDateTitle,
                subtitle:
                    cubit.fundDetailsResponse?.inceptionDate?.formatDate ??
                        "-"),
            FundHighLightsModel(
                icon: Assets.icons.insights,
                title: context.fundsLocal.navTitle,
                subtitle: (cubit.fundDetailsResponse?.nav ?? "-").toString()),
            FundHighLightsModel(
                icon: Assets.icons.stack2,
                title: context.fundsLocal.navPriceTitle,
                subtitle:
                    cubit.fundDetailsResponse?.inceptionDate?.formatDate ??
                        "-"),
            FundHighLightsModel(
                icon: Assets.icons.insights,
                title: context.fundsLocal.annualizedWeekReturnTitle,
                subtitle:
                    cubit.fundDetailsResponse?.annualizedOneWeekReturn ?? "-"),
            FundHighLightsModel(
                icon: Assets.icons.depositLongterm,
                title: context.fundsLocal.returnSinceInception,
                subtitle: cubit.fundDetailsResponse?.returnSinceInception
                        .toString() ??
                    "-"),
          ],
        ),
      ],
    );
  }
}
