import 'package:invest_common/common.dart';
import 'package:invest_common/src/widgets/review/review_item/review_item_theme.dart';
import 'package:invest_common/src/widgets/gradient/gradient_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_amount/transaction_amount_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_card/transaction_card_theme.dart';
import 'package:invest_common/src/widgets/transaction/transaction_icon/transaction_icon_theme.dart';
import 'package:invest_common/src/widgets/upload_card/upload.dart';
import 'package:flutter/material.dart';

export 'package:invest_common/src/theme/tokens.dart';
export 'package:invest_common/src/theme/colors.dart';
export 'package:invest_common/src/theme/extensions.dart';

class KITheme extends ThemeExtension<KITheme> {
  KIThemeToken tokens;
  KICheckboxTheme checkboxTheme;

  KIConverterTheme converterTheme;
  KIConverterFieldTheme converterFieldTheme;
  KIConverterSwitchTheme converterSwitchTheme;

  KIRadioTheme radioTheme;
  KIProgressBarTheme progressBarTheme;

  KISelectableCardTheme selectableCardTheme;
  KISelectableTextTheme selectableTextTheme;
  KICircularAvatarTheme circularAvatarTheme;
  KIOnboardingItemTheme onboardingItemTheme;
  KISignatureTheme signatureTheme;
  KIAccountIconTheme accountIconTheme;
  KIAccountCardTheme accountCardTheme;
  KILineChartTheme lineChartTheme;
  KITransactionAmountTheme transactionAmountTheme;
  KITransactionTheme transactionTheme;
  KITransactionIconTheme transactionIconTheme;
  KIUploadCardTheme uploadCardTheme;
  KISuccessfulTheme successfulTheme;
  KIInfoTheme infoTheme;

  KIWidgetsGroupTheme widgetsGroupTheme;
  KIAppScaffoldTheme appScaffoldTheme;
  KIReviewItemTheme reviewItemTheme;
  KIGradientTheme gradientTheme;
  KIAppBarTheme appBarTheme;
  KIContrastButtonTheme contrastButtonTheme;

  KITheme({
    required this.tokens,
    KICheckboxTheme? checkboxTheme,
    KIConverterTheme? converterTheme,
    KIConverterFieldTheme? converterFieldTheme,
    KIConverterSwitchTheme? converterSwitchTheme,
    KIRadioTheme? radioTheme,
    KIProgressBarTheme? progressBarTheme,
    KISelectableCardTheme? selectableCardTheme,
    KISelectableTextTheme? selectableTextTheme,
    KICircularAvatarTheme? circularAvatarTheme,
    KIOnboardingItemTheme? onboardingItemTheme,
    KIWidgetsGroupTheme? widgetsGroupTheme,
    KIAppScaffoldTheme? appScaffoldTheme,
    KILineChartTheme? lineChartTheme,
    KISignatureTheme? signatureTheme,
    KITransactionAmountTheme? transactionAmountTheme,
    KITransactionTheme? transactionTheme,
    KITransactionIconTheme? transactionIconTheme,
    KIUploadCardTheme? uploadCardTheme,
    KISuccessfulTheme? successfulTheme,
    KIInfoTheme? infoTheme,
    KIAccountIconTheme? accountIconTheme,
    KIAccountCardTheme? accountCardTheme,
    KIReviewItemTheme? reviewItemTheme,
    KIGradientTheme? gradientTheme,
    KIAppBarTheme? appBarTheme,
    KIContrastButtonTheme? contrastButtonTheme,
  })  : checkboxTheme = checkboxTheme ?? KICheckboxTheme(tokens: tokens),
        converterTheme = converterTheme ?? KIConverterTheme(tokens: tokens),
        converterSwitchTheme =
            converterSwitchTheme ?? KIConverterSwitchTheme(tokens: tokens),
        converterFieldTheme =
            converterFieldTheme ?? KIConverterFieldTheme(tokens: tokens),
        radioTheme = radioTheme ?? KIRadioTheme(tokens: tokens),
        progressBarTheme =
            progressBarTheme ?? KIProgressBarTheme(tokens: tokens),
        selectableCardTheme =
            selectableCardTheme ?? KISelectableCardTheme(tokens: tokens),
        selectableTextTheme =
            selectableTextTheme ?? KISelectableTextTheme(tokens: tokens),
        circularAvatarTheme =
            circularAvatarTheme ?? KICircularAvatarTheme(tokens: tokens),
        onboardingItemTheme =
            onboardingItemTheme ?? KIOnboardingItemTheme(tokens: tokens),
        widgetsGroupTheme =
            widgetsGroupTheme ?? KIWidgetsGroupTheme(tokens: tokens),
        appScaffoldTheme =
            appScaffoldTheme ?? KIAppScaffoldTheme(tokens: tokens),
        signatureTheme = signatureTheme ?? KISignatureTheme(tokens: tokens),
        lineChartTheme = lineChartTheme ?? KILineChartTheme(tokens: tokens),
        transactionAmountTheme =
            transactionAmountTheme ?? KITransactionAmountTheme(tokens: tokens),
        transactionTheme =
            transactionTheme ?? KITransactionTheme(tokens: tokens),
        transactionIconTheme =
            transactionIconTheme ?? KITransactionIconTheme(tokens: tokens),
        uploadCardTheme = uploadCardTheme ?? KIUploadCardTheme(tokens: tokens),
        successfulTheme = successfulTheme ?? KISuccessfulTheme(tokens: tokens),
        infoTheme = infoTheme ?? KIInfoTheme(tokens: tokens),
        accountIconTheme =
            accountIconTheme ?? KIAccountIconTheme(tokens: tokens),
        accountCardTheme =
            accountCardTheme ?? KIAccountCardTheme(tokens: tokens),
        reviewItemTheme = reviewItemTheme ?? KIReviewItemTheme(tokens: tokens),
        gradientTheme = gradientTheme ?? KIGradientTheme(tokens: tokens),
        appBarTheme = appBarTheme ?? KIAppBarTheme(tokens: tokens),
        contrastButtonTheme =
            contrastButtonTheme ?? KIContrastButtonTheme(tokens: tokens);

  @override
  KITheme copyWith({
    KIThemeToken? tokens,
    KICheckboxTheme? checkboxTheme,
    KIConverterTheme? converterTheme,
    KIConverterFieldTheme? converterFieldTheme,
    KIConverterSwitchTheme? converterSwitchTheme,
    KIRadioTheme? radioTheme,
    KIProgressBarTheme? progressBarTheme,
    KISelectableCardTheme? selectableCardTheme,
    KISelectableTextTheme? selectableTextTheme,
    KICircularAvatarTheme? circularAvatarTheme,
    KIOnboardingItemTheme? onboardingItemTheme,
    KIWidgetsGroupTheme? widgetsGroupTheme,
    KIAppScaffoldTheme? appScaffoldTheme,
    KILineChartTheme? lineChartTheme,
    KISignatureTheme? signatureTheme,
    KITransactionAmountTheme? transactionAmountTheme,
    KITransactionTheme? transactionTheme,
    KITransactionIconTheme? transactionIconTheme,
    KIUploadCardTheme? uploadCardTheme,
    KISuccessfulTheme? successfulTheme,
    KIInfoTheme? infoTheme,
    KIAccountIconTheme? accountIconTheme,
    KIAccountCardTheme? accountCardTheme,
    KIReviewItemTheme? reviewItemTheme,
    KIGradientTheme? gradientTheme,
    KIAppBarTheme? appBarTheme,
    KIContrastButtonTheme? contrastButtonTheme,
  }) {
    return KITheme(
      tokens: tokens ?? this.tokens,
      checkboxTheme: checkboxTheme ?? this.checkboxTheme,
      converterTheme: converterTheme ?? this.converterTheme,
      converterFieldTheme: converterFieldTheme ?? this.converterFieldTheme,
      converterSwitchTheme: converterSwitchTheme ?? this.converterSwitchTheme,
      radioTheme: radioTheme ?? this.radioTheme,
      progressBarTheme: progressBarTheme ?? this.progressBarTheme,
      selectableCardTheme: selectableCardTheme ?? this.selectableCardTheme,
      selectableTextTheme: selectableTextTheme ?? this.selectableTextTheme,
      widgetsGroupTheme: widgetsGroupTheme ?? this.widgetsGroupTheme,
      appScaffoldTheme: appScaffoldTheme ?? this.appScaffoldTheme,
      signatureTheme: signatureTheme ?? this.signatureTheme,
      lineChartTheme: lineChartTheme ?? this.lineChartTheme,
      transactionAmountTheme:
          transactionAmountTheme ?? this.transactionAmountTheme,
      transactionTheme: transactionTheme ?? this.transactionTheme,
      transactionIconTheme: transactionIconTheme ?? this.transactionIconTheme,
      uploadCardTheme: uploadCardTheme ?? this.uploadCardTheme,
      successfulTheme: successfulTheme ?? this.successfulTheme,
      infoTheme: infoTheme ?? this.infoTheme,
      accountIconTheme: accountIconTheme ?? this.accountIconTheme,
      accountCardTheme: accountCardTheme ?? this.accountCardTheme,
      circularAvatarTheme: circularAvatarTheme ?? this.circularAvatarTheme,
      onboardingItemTheme: onboardingItemTheme ?? this.onboardingItemTheme,
      reviewItemTheme: reviewItemTheme ?? this.reviewItemTheme,
      gradientTheme: gradientTheme ?? this.gradientTheme,
      appBarTheme: appBarTheme ?? this.appBarTheme,
      contrastButtonTheme: contrastButtonTheme ?? this.contrastButtonTheme,
    );
  }

  @override
  ThemeExtension<KITheme> lerp(
      covariant ThemeExtension<KITheme>? other, double t) {
    if (other is! KITheme) return this;

    return KITheme(
      tokens: other.tokens,
      checkboxTheme: checkboxTheme.lerp(other.checkboxTheme, t),
      converterTheme: converterTheme.lerp(other.converterTheme, t),
      converterSwitchTheme:
          converterSwitchTheme.lerp(other.converterSwitchTheme, t),
      converterFieldTheme:
          converterFieldTheme.lerp(other.converterFieldTheme, t),
      radioTheme: radioTheme.lerp(other.radioTheme, t),
      progressBarTheme: progressBarTheme.lerp(other.progressBarTheme, t),
      selectableCardTheme:
          selectableCardTheme.lerp(other.selectableCardTheme, t),
      selectableTextTheme:
          selectableTextTheme.lerp(other.selectableTextTheme, t),
      circularAvatarTheme:
          circularAvatarTheme.lerp(other.circularAvatarTheme, t),
      onboardingItemTheme:
          onboardingItemTheme.lerp(other.onboardingItemTheme, t),
      widgetsGroupTheme: widgetsGroupTheme.lerp(other.widgetsGroupTheme, t),
      appScaffoldTheme: appScaffoldTheme.lerp(other.appScaffoldTheme, t),
      signatureTheme: signatureTheme.lerp(other.signatureTheme, t),
      lineChartTheme: lineChartTheme.lerp(other.lineChartTheme, t),
      transactionAmountTheme:
          transactionAmountTheme.lerp(other.transactionAmountTheme, t),
      transactionTheme: transactionTheme.lerp(other.transactionTheme, t),
      transactionIconTheme:
          transactionIconTheme.lerp(other.transactionIconTheme, t),
      uploadCardTheme: uploadCardTheme.lerp(other.uploadCardTheme, t),
      successfulTheme: successfulTheme.lerp(other.successfulTheme, t),
      infoTheme: infoTheme.lerp(other.infoTheme, t),
      accountIconTheme: accountIconTheme.lerp(other.accountIconTheme, t),
      accountCardTheme: accountCardTheme.lerp(other.accountCardTheme, t),
      reviewItemTheme: reviewItemTheme.lerp(other.reviewItemTheme, t),
      appBarTheme: appBarTheme.lerp(other.appBarTheme, t),
      contrastButtonTheme:
          contrastButtonTheme.lerp(other.contrastButtonTheme, t),
    );
  }
}
