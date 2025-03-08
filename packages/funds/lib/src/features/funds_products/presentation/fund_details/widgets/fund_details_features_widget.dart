import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart';
import 'package:funds/src/l10n/extension/funds_local.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'dart:convert';
import 'package:invest_common/common.dart';

class FundDetailsFeaturesWidget extends StatelessWidget {
  const FundDetailsFeaturesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundDetailsCubit>();
    return Column(
      children: [
        SectionHeader(
          context.fundsLocal.featuresTitle,
          padding: AppEdgeInsets.symmetric(horizontal: AppGapSize.xxl),
        ),
        AppGap.m(),
        AppContainer(
            height: 196.rh,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: cubit.fundDetailsResponse?.features?.length ?? 0,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final String base64Img =
                    cubit.fundDetailsResponse?.icon?.base64 ?? "";
                final decodedImg = base64Decode(base64Img.split(",").last);
                final hexIconLightColor =
                    "FF${cubit.fundDetailsResponse?.icon?.color?.light}";
                final hexIconDarkColor =
                    "FF${cubit.fundDetailsResponse?.icon?.color?.light}";
                final hexDarkBackgroundColor =
                    "FF${cubit.fundDetailsResponse?.icon?.backgroundColor?.dark}";
                final hexLightBackgroundColor =
                    "FF${cubit.fundDetailsResponse?.icon?.backgroundColor?.light}";
                return Row(
                  children: [
                    AppContainer(
                      width: 190.rw,
                      padding: AppEdgeInsets.s(),
                      margin: AppEdgeInsets.only(
                          left: AppGapSize.m,
                          right: index ==
                                  (cubit.fundDetailsResponse?.features
                                              ?.length ??
                                          0) -
                                      1
                              ? AppGapSize.m
                              : AppGapSize.none),
                      decoration: BoxDecoration(
                          borderRadius:
                              context.tokens.radius.asBorderRadius().regular,
                          color: context.tokens.colors.kiWhite,
                          boxShadow: [
                            context.tokens.effects.shadows.shadow100
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(int.parse(
                                ThemeMode == ThemeMode.dark
                                    ? hexDarkBackgroundColor
                                    : hexLightBackgroundColor,
                                radix: 16)),
                            //Color(int.parse(hexBackgroundColor, radix: 16)),
                            child: SvgPicture.memory(decodedImg,
                                // width: 24.rw,
                                // height: 24.rh,
                                color: Color(int.parse(
                                    ThemeMode == ThemeMode.dark
                                        ? hexIconDarkColor
                                        : hexIconLightColor,
                                    radix: 16))),
                          ),
                          AppGap.s(),
                          Expanded(
                            child: GradientWidget(
                              gradient: AppColorsData.createGradient(colors: [
                                AppColorsData.azure.shade700,
                                AppColorsData.azure.shade500,
                              ]),
                              child: AppText.bodyBold(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                cubit.fundDetailsResponse?.features?[index]
                                        .title ??
                                    "",
                                color: AppColorsData.azureDark,
                              ),
                            ),
                          ),
                          // AppGap.xs(),
                          Expanded(
                            child: AppText.smallRegular(
                              cubit.fundDetailsResponse?.features?[index]
                                      .description ??
                                  "",
                              color: context.tokens.colors.kiTextBodyPrimary,
                              maxLines: 4,
                              //overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )),
      ],
    );
  }
}
