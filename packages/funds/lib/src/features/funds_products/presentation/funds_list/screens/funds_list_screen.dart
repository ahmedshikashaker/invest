import 'package:common_dependencies/common_dependencies.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_state.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/funds_list_empty_widget.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/funds_loaded_list_widget.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';

@RoutePage()
class FundsListScreen extends StatelessWidget {
  const FundsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FundsListCubit>()..getFundList(),
      child: BlocBuilder<FundsListCubit, FundsListState>(
        builder: (ctx, state) {
          final cubit = ctx.watch<FundsListCubit>();

          return KIAppScaffold(
              backgroundColor: context.colors.kiLightBackground,
              appbar: (appBarController) => KIAppBarWidget(
                    animationController: appBarController,
                    title: AppText(
                      context.fundsLocal.investmentsProductsTitle,
                      color: AppColorsData.white,
                      level: AppTextLevel.sublineHeavy,
                    ),
                    canPop: true,
                    centeredTitle: AppText(""),
                  ),
              body: (context, animationController, scrollController) =>
                  state.maybeMap(
                    loading: (_) => AppCircularProgressIndicator(),
                    orElse: () => AppPadding(
                      padding: AppEdgeInsets.only(
                          bottom: AppGapSize.xl,
                          left: AppGapSize.m,
                          right: AppGapSize.m,
                          top: AppGapSize.m),
                      child: Visibility(
                        visible: cubit.fundsList != null &&
                            cubit.fundsList!.isNotEmpty,
                        replacement: FundsListEmptyWidget(),
                        child: FundsLoadedListWidget(
                          scrollController: scrollController,
                        ),
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
