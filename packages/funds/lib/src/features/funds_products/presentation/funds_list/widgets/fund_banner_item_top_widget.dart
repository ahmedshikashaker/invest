import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'dart:convert';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:common_dependencies/common_dependencies.dart';

class FundBannerItemTopWidget extends StatelessWidget {
  const FundBannerItemTopWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<FundsListCubit>();
    final String base64Img = cubit.fundsList?[index].icon?.base64 ?? "";
    final decodedImg = base64Decode(base64Img.split(",").last);
    final hexIconLightColor = "FF${cubit.fundsList?[index].icon?.color?.light}";
    final hexIconDarkColor = "FF${cubit.fundsList?[index].icon?.color?.light}";
    final hexDarkBackgroundColor =
        "FF${cubit.fundsList?[index].icon?.backgroundColor?.dark}";
    final hexLightBackgroundColor =
        "FF${cubit.fundsList?[index].icon?.backgroundColor?.light}";

    return Row(
      children: [
        CircleAvatar(
          backgroundColor:  ThemeMode == ThemeMode.dark?  Color(int.parse(hexDarkBackgroundColor, radix: 16)):  Color(int.parse(hexLightBackgroundColor, radix: 16)),//Color(int.parse(hexBackgroundColor, radix: 16)),
          child: SvgPicture.memory(decodedImg,
              width: context.tokens.spacing.m.rw,
              height: context.tokens.spacing.m.rw,

              color: ThemeMode == ThemeMode.dark? Color(int.parse(hexIconDarkColor, radix: 16)): Color(int.parse(hexIconLightColor, radix: 16))),
        ),
        AppGap.xs(),
        AppText(
          cubit.fundsList?[index].name ?? "-",
          level: AppTextLevel.bodyMedium,
          color: context.colors.kiTextBodyPrimary,
        )
      ],
    );
  }
}
