import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:funds/src/features/funds_products/presentation/fund_details/widgets/fund_details_sheet_item_widget.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class FundDetailsSheetsListWidget extends StatelessWidget {
  const FundDetailsSheetsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundDetailsCubit>();
    return AppPadding(
      padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.m),
      child: Column(
        children: [
          FundDetailsSheetItemWidget(
            title: context.fundsLocal.articlesAssociationTitle,
            pdfPath:
                cubit.fundDetailsResponse?.articlesOfAssociationDocument ?? "",
          ),
          FundDetailsSheetItemWidget(
            title: context.fundsLocal.factSheetTitle,
            pdfPath:
                cubit.fundDetailsResponse?.articlesOfAssociationDocument ?? "",
          ),
          FundDetailsSheetItemWidget(
            title: context.fundsLocal.termsAndConditionsTitle,
            pdfPath:
                cubit.fundDetailsResponse?.articlesOfAssociationDocument ?? "",
          ),
        ],
      ),
    );
  }
}
