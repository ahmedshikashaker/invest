import 'package:common_dependencies/common_dependencies.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_state.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_button.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_chart_widget.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_features_widget.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_floating_widget.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_highlights_widget.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_sheets_list_widget.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';

@RoutePage()
class FundDetailsScreen extends StatefulWidget {
  final String fundId;

  const FundDetailsScreen({Key? key, required this.fundId}) : super(key: key);

  @override
  State<FundDetailsScreen> createState() => _FundDetailsScreenState();
}

class _FundDetailsScreenState extends State<FundDetailsScreen>
    with LoadingOverlayStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<FundDetailsCubit>()..getFundDetails(widget.fundId),
      child: BlocConsumer<FundDetailsCubit, FundDetailsState>(
        listener: (context, state) {
          state.maybeWhen(
              error: (error) => {},

              /// TODO: loading overlay is still not designed yet for invest, it will be changed once design is ready.
              loading: () => showLoadingMenu(),
              orElse: () => closeMenu());
        },
        builder: (context, state) {
          return KIAppScaffold(
            backgroundColor: context.colors.kiLightBackground,
            appbar: (appBarController) => KIAppBarWidget(
              animationController: appBarController,
              title: AppText(""),
              canPop: true,
              centeredTitle: AppText(
                context.fundsLocal.kibInvestFundsTitle,
                color: AppColorsData.white,
                level: AppTextLevel.sublineHeavy,
              ),
            ),
            floatingChildrenBuilder: (context, animationController) => [
              Positioned(
                  top: MediaQuery.of(context).padding.top,
                  child: Positioned(
                    top: MediaQuery.of(context).padding.top + 48.rh,
                    right: context.tokens.spacing.m,
                    left: context.tokens.spacing.m,
                    child: AnimatedSlideWidget.slideUp(
                      FundDetailsFloatingWidget(),
                      animationController,
                    ),
                  ))
            ],
            body: (BuildContext context,
                AnimationController animationController,
                ScrollController scrollController) {
              return AppPadding(
                padding: AppEdgeInsets.only(
                    top: AppGapSize.m, bottom: AppGapSize.xl),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding:
                            EdgeInsets.only(top: context.tokens.spacing.x11l),
                        shrinkWrap: true,
                        controller: scrollController,
                        children: [
                          AppPadding(
                            padding: AppEdgeInsets.symmetric(
                                horizontal: AppGapSize.m),
                            child: Column(
                              children: [
                                AppGap.l(),
                                FundDetailsHighlightWidget(),
                                AppGap.l(),
                                FundDetailsChartWidget(),
                                AppGap.l(),
                              ],
                            ),
                          ),
                          FundDetailsFeaturesWidget(),
                          AppGap.l(),
                          FundDetailsSheetsListWidget(),
                        ],
                      ),
                    ),
                    FundDetailsButton()
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
