import 'package:funds/src/features/funds_products/data/models/item_details_model.dart';
import 'package:funds/src/features/funds_products/presentation/funds_list/widgets/fund_banner_item_details_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';


class FundBannerItemDetailsGridWidget extends StatelessWidget {
  const FundBannerItemDetailsGridWidget({
    super.key,required this.items,
  });


  final List<ItemDetailsModel> items;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          //crossAxisSpacing: context.spacing.xs,
          mainAxisExtent: 32.rh,
          mainAxisSpacing: context.spacing.xs,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return FundBannerItemDetailsWidget(
            title: items[index].title,
            description: items[index].description,
          );

        });
  }
}
