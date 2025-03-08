import 'package:funds/funds.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/fund_banner_button_widget.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/fund_banner_item_body_widget.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/fund_banner_item_top_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

class FundsLoadedListWidget extends StatelessWidget {
  const FundsLoadedListWidget({
    super.key,
    required this.scrollController,
  });

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundsListCubit>();
    final isLoadingMore = cubit.state.maybeWhen(
      orElse: () => false,
      loadMore: () => true,
    );
    return Column(
      children: [
        Expanded(
          child: ScrollNotificationListener(
            onReachLimit: () {
              if (!isLoadingMore) {
                cubit.getFundList(isScrolling: true);
              }
            },
            child: ListView.separated(
              padding: EdgeInsets.zero,
              controller: scrollController,
              shrinkWrap: true,
              itemCount: cubit.fundsList?.length ?? 0,
              itemBuilder: (context, index) {
                if (index == (cubit.fundsList?.length) && isLoadingMore) {
                  return const AppCircularProgressIndicator();
                }

                return GestureDetector(
                  onTap: () {
                    context.router.push(FundDetailsRoute(
                        fundId: cubit.fundsList?[index].id ?? ""));
                  },
                  child: AppContainer(
                    //height: 220.rh,
                    padding: AppEdgeInsets.m(),
                    decoration: BoxDecoration(
                        color: context.tokens.colors.kiWhite,
                        borderRadius: context.radius.asBorderRadius().regular,
                        boxShadow: [context.tokens.effects.shadows.shadow200]),
                    child: Column(
                      children: [
                        FundBannerItemTopWidget(
                          index: index,
                        ),
                        AppGap.m(),
                        FundBannerItemBodyWidget(index: index)
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => AppGap.m(),
            ),
          ),
        ),
        FundBannerButtonWidget(),
      ],
    );
  }
}
