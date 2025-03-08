import 'package:funds/src/features/funds_products/data/models/fund_highlights_model.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';

class FundDetailsHighlightItemWidget extends StatelessWidget {
  final FundHighLightsModel fundHighLightsModel;

  const FundDetailsHighlightItemWidget({
    super.key,
    required this.fundHighLightsModel,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: AppEdgeInsets.symmetric(
          horizontal: AppGapSize.m, vertical: AppGapSize.s),
      decoration: BoxDecoration(
          borderRadius: context.tokens.radius.asBorderRadius().regular,
          color: context.tokens.colors.kiWhite,
          border: Border.all(color: context.tokens.colors.kiBackground)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              KICircularAvatar(
                icon: fundHighLightsModel.icon,
                iconColor: AppColorsData.amber.shade700,
                backgroundColor: context.colors.kiLightBackground,
                border: Border.all(width: 0, color: Colors.transparent),
                borderPadding: AppEdgeInsets.none(),
                iconPadding: AppEdgeInsets.s(),
              ),
            ],
          ),
          AppGap.xs(),
          AppText.smallRegular(fundHighLightsModel.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              color: context.tokens.colors.textBodySecondary),
          AppText.bodyRegular(fundHighLightsModel.subtitle,
              color: context.tokens.colors.kiTextBodyPrimary)
        ],
      ),
    );
  }
}
