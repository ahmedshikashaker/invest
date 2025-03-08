import 'package:flutter/material.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/src/config/global/ki_global_config_cubit.dart';

extension LocaleConfigExt on BuildContext {
  set locale(Locale locale) {
    read<KiGlobalConfigCubit>().setLocale(locale.languageCode);
  }
}
