import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

class FundDetailsSheetItemWidget extends StatelessWidget {
  const FundDetailsSheetItemWidget({
    super.key,
    required this.title,
    required this.pdfPath,
  });

  final String title;
  final String pdfPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItemWidget(
          padding: AppEdgeInsets.m(),
          title: title,
          titleTextStyle: AppTextStyle(
              color: context.tokens.colors.actionableSecondary,
              level: AppTextLevel.captionMedium),
          onTap: () {},
          // => showDigitalTCPdf(
          //   context,
          //   pdfPath,
          // ),
          trailing: Assets.icons.chevronRight,
        ),
        AppItemDivider(
          color: context.colors.separator,
          padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.s),
        ),
      ],
    );
  }
}
