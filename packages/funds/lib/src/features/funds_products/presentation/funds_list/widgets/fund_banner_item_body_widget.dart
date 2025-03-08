import 'package:funds/src/features/funds_products/data/models/item_details_model.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/fund_banner_item_details_grid_widget.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

class FundBannerItemBodyWidget extends StatelessWidget {
  const FundBannerItemBodyWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundsListCubit>();
    return AppContainer(
      padding: AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: context.colors.kiLightBackground,
        borderRadius: context.radius.asBorderRadius().regular,
      ),
      child: FundBannerItemDetailsGridWidget(
        items: [
          ItemDetailsModel(
              title: context.fundsLocal.inceptionDateTitle,
              description:
                  cubit.fundsList?[index].inceptionDate?.formatMonthDate ??
                      "-"),
          ItemDetailsModel(
              title: context.fundsLocal.minInvestmentTitle,
              description:
                  "${cubit.fundsList?[index].minInvestment?.formatWithoutDecimalPoints ?? "-"} KWD"
                      .ltr),
          ItemDetailsModel(
              title: context.fundsLocal.navTitle,
              description:
                  "${cubit.fundsList?[index].nav?.formatWithoutDecimalPoints ?? "-"} KWD"
                      .ltr),
          ItemDetailsModel(
              title: context.fundsLocal.navDateTitle,
              description:
                  cubit.fundsList?[index].navDate?.formatMonthDate ?? "-"),
          ItemDetailsModel(
              title: context.fundsLocal.returnSinceInception,
              description:
                  "${cubit.fundsList?[index].returnSinceInception?.formatWithoutDecimalPoints ?? "-"} KWD"
                      .ltr),
          ItemDetailsModel(
              title: context.fundsLocal.annualizedWeekTitle,
              description:
                  "${cubit.fundsList?[index].annualizedOneWeekReturn ?? "-"}"
                      .ltr),
        ],
      ),
    );
  }
}
