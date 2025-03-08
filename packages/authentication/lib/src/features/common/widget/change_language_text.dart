import 'package:common_dependencies/common_dependencies.dart'
    hide BuildContextEasyLocalizationExtension;
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';

class ChangeLanguageText extends StatelessWidget {
  const ChangeLanguageText({
    super.key,
    this.alignment = AlignmentDirectional.centerEnd,
  });

  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<KiGlobalConfigCubit>();
    return Align(
      alignment: alignment,
      child: InkWell(
        onTap: () {
          // Determine the new locale
          final newLocale = cubit.locale.languageCode == 'ar'
              ? const Locale('en')
              : const Locale('ar');

          context.locale = newLocale;
        },
        child: AppText.bodyRegular(
          cubit.locale.isArabic ? "English" : "عربي",
          color: AppColorsData.white,
        ),
      ),
    );
  }
}
