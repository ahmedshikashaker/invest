import 'package:funds/src/features/funds_products/data/models/fund_highlights_model.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_highlight_item_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

class FundDetailsHighlightGridWidget extends StatelessWidget {
  final List<FundHighLightsModel> fundHighLightsList;

  const FundDetailsHighlightGridWidget({
    super.key,
    required this.fundHighLightsList,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: context.spacing.s,
          mainAxisExtent: 122.rh,
          mainAxisSpacing: context.spacing.s,
        ),
        itemCount: fundHighLightsList.length,
        itemBuilder: (context, index) {
          return FundDetailsHighlightItemWidget(
            fundHighLightsModel: FundHighLightsModel(
                icon: fundHighLightsList[index].icon,
                title: fundHighLightsList[index].title,
                subtitle: fundHighLightsList[index].subtitle),
          );
        });
  }
}
