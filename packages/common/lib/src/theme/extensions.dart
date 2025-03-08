import 'package:invest_common/common.dart';
import 'package:invest_common/src/widgets/review/review_item/review_item_theme.dart';
import 'package:invest_common/src/theme/tokens.dart';
import 'package:invest_common/src/widgets/gradient/gradient_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_amount/transaction_amount_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_card/transaction_card_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_icon/transaction_icon_theme.dart';
import 'package:invest_common/src/widgets/upload_card/upload.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_design_system/theme/data/effects/effects.dart';
import 'package:kib_design_system/theme/data/typography/typography.dart';

extension KIThemeExtension on BuildContext {
  KITheme get _theme => Theme.of(this).extension<KITheme>()!;

  KIThemeToken get tokens => _theme.tokens;

  KIAppColorsData get colors => tokens.colors;

  KIAppColorsData get complementaryColors => tokens.complementaryColors;

  AppTypographyData get typography => tokens.typography;

  AppSpacingData get spacing => tokens.spacing;

  AppRadiusData get radius => tokens.radius;

  AppEffectsData get effects => tokens.effects;

  KICheckboxTheme get checkboxTheme => _theme.checkboxTheme;

  KIConverterTheme get converterTheme => _theme.converterTheme;

  KIConverterFieldTheme get converterFieldTheme => _theme.converterFieldTheme;

  KIConverterSwitchTheme get converterSwitchTheme =>
      _theme.converterSwitchTheme;

  KIRadioTheme get radioTheme => _theme.radioTheme;

  KIProgressBarTheme get progressBarTheme => _theme.progressBarTheme;

  KISelectableCardTheme get selectableCardTheme => _theme.selectableCardTheme;

  KISelectableTextTheme get selectableTextTheme => _theme.selectableTextTheme;

  KICircularAvatarTheme get circularAvatarTheme => _theme.circularAvatarTheme;

  KIOnboardingItemTheme get onboardingItemTheme => _theme.onboardingItemTheme;

  KIWidgetsGroupTheme get widgetsGroupTheme => _theme.widgetsGroupTheme;

  KIAppScaffoldTheme get appScaffoldTheme => _theme.appScaffoldTheme;

  KISignatureTheme get signatureTheme => _theme.signatureTheme;

  KILineChartTheme get lineChartTheme => _theme.lineChartTheme;

  KITransactionAmountTheme get transactionAmountTheme =>
      _theme.transactionAmountTheme;

  KITransactionTheme get transactionTheme => _theme.transactionTheme;

  KITransactionIconTheme get transactionIconTheme =>
      _theme.transactionIconTheme;

  KIUploadCardTheme get uploadCardTheme => _theme.uploadCardTheme;

  KISuccessfulTheme get successfulTheme => _theme.successfulTheme;

  KIInfoTheme get infoTheme => _theme.infoTheme;

  KIAccountIconTheme get accountIconTheme => _theme.accountIconTheme;

  KIAccountCardTheme get accountCardTheme => _theme.accountCardTheme;
  KIReviewItemTheme get reviewItemTheme => _theme.reviewItemTheme;

  KIAppBarTheme get appBarTheme => _theme.appBarTheme;

  KIGradientTheme get gradientTheme => _theme.gradientTheme;

  KIContrastButtonTheme get contrastButtonTheme => _theme.contrastButtonTheme;
}
