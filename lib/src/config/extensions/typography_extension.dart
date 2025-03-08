import 'package:flutter/material.dart';
import 'package:kib_design_system/theme/data/typography/typography.dart';

extension TypographyExtension on Locale {

  AppTypographyData get typography {
    switch (languageCode) {
      case "ar":
        return AppTypographyData.arabic(fontFamily: "Bahij");
      default:
        return AppTypographyData.english(
            fontFamily: AppTypographyData.englishFont);
    }
  }
}


