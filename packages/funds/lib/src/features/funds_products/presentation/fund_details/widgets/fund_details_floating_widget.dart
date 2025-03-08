import 'dart:convert';

import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FundDetailsFloatingWidget extends StatelessWidget {
  const FundDetailsFloatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundDetailsCubit>();

    if(cubit.fundDetailsResponse == null)
      return SizedBox.shrink();

    final themeMode = Theme.of(context).brightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;

    final String base64Img = cubit.fundDetailsResponse?.icon?.base64 ?? "";
    final decodedImg = base64Decode(base64Img.split(",").last);
    final hexIconLightColor =
        "FF${cubit.fundDetailsResponse?.icon?.color?.light}";
    final hexIconDarkColor =
        "FF${cubit.fundDetailsResponse?.icon?.color?.light}";
    final hexDarkBackgroundColor =
        "FF${cubit.fundDetailsResponse?.icon?.backgroundColor?.dark}";
    final hexLightBackgroundColor =
        "FF${cubit.fundDetailsResponse?.icon?.backgroundColor?.light}";

    return AppContainer(
      height: 180.rh,
      padding: AppEdgeInsets.m(),
      decoration: BoxDecoration(
        borderRadius: context.tokens.radius.asBorderRadius().regular,
        color: context.tokens.colors.kiWhite,
        boxShadow: [context.tokens.effects.shadows.shadow200],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(int.parse(
                    themeMode == ThemeMode.dark
                        ? hexDarkBackgroundColor
                        : hexLightBackgroundColor,
                    radix: 16)),
                //Color(int.parse(hexBackgroundColor, radix: 16)),
                child: SvgPicture.memory(decodedImg,
                    color: Color(int.parse(
                        themeMode == ThemeMode.dark
                            ? hexIconDarkColor
                            : hexIconLightColor,
                        radix: 16))),
              ),
              AppGap.xs(),
              AppText(
                cubit.fundDetailsResponse?.name ?? "-",
                level: AppTextLevel.bodyMedium,
                color: context.tokens.colors.kiTextBodyPrimary,
              )
            ],
          ),
          AppGap.m(),
          AppText.smallRegular(
            cubit.fundDetailsResponse?.description ?? "-",
            color: context.tokens.colors.textBodySecondary,
          ),
        ],
      ),
    );
  }
}
