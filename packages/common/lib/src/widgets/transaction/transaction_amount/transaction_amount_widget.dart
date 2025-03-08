import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../transaction.dart';

enum KITransactionAmountType { redeem, subscribe }

class KITransactionAmountWidget extends StatelessWidget {
  final KITransactionAmountType transactionAmountType;
  final String? amount;
  final AppEdgeInsets? padding;
  final String? currency;
  final AppTextStyle? amountStyle;
  final AppTextStyle? currencyStyle;
  final AppTextLevel? amountTextLevel;
  final Color? backgroundColor;
  final Color? amountColor;
  final Color? currencyColor;
  final AppTextLevel? currencyTextLevel;
  final BorderRadiusGeometry? borderRadius;

  const KITransactionAmountWidget({
    Key? key,
    required this.transactionAmountType,
    this.padding,
    this.amount,
    this.currency,
    this.borderRadius,
    this.amountStyle,
    this.currencyStyle,
    this.amountTextLevel,
    this.backgroundColor,
    this.amountColor,
    this.currencyColor,
    this.currencyTextLevel,
  }) : super(key: key);

  const KITransactionAmountWidget.redeem({
    Key? key,
    this.amount,
    this.currency,
    this.padding,
    this.borderRadius,
    this.amountStyle,
    this.currencyStyle,
    this.amountTextLevel,
    this.backgroundColor,
    this.amountColor,
    this.currencyColor,
    this.currencyTextLevel,
  })  : transactionAmountType = KITransactionAmountType.redeem,
        super(key: key);

  const KITransactionAmountWidget.subscribe({
    Key? key,
    this.amount,
    this.currency,
    this.padding,
    this.borderRadius,
    this.amountStyle,
    this.currencyStyle,
    this.amountTextLevel,
    this.backgroundColor,
    this.amountColor,
    this.currencyColor,
    this.currencyTextLevel,
  })  : transactionAmountType = KITransactionAmountType.subscribe,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppEdgeInsets effectivePadding =
        padding ?? context.transactionAmountTheme.properties.padding;
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.transactionAmountTheme.properties.borderRadius;
    final Color effectiveBackgroundColor = backgroundColor ??
        context.transactionAmountTheme.colors.backgroundColor;

    return AppContainer(
      padding: effectivePadding,
      decoration: BoxDecoration(
        color: effectiveBackgroundColor,
        borderRadius: effectiveBorderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _TransactionAmountWidget(
            transactionAmountType: transactionAmountType,
            amount: amount,
            amountCurrency: currency,
            amountStyle: amountStyle,
            currencyStyle: currencyStyle,
            amountTextLevel: amountTextLevel,
            amountColor: amountColor,
            currencyColor: currencyColor,
            currencyTextLevel: currencyTextLevel,
          ),
        ],
      ),
    );
  }
}

class _TransactionAmountWidget extends StatelessWidget {
  final String? amount;
  final String? amountCurrency;
  final Color? amountColor;
  final Color? currencyColor;
  final KITransactionAmountType? transactionAmountType;
  final AppTextLevel? amountTextLevel;
  final AppTextLevel? currencyTextLevel;
  final AppTextStyle? amountStyle;
  final AppTextStyle? currencyStyle;

  const _TransactionAmountWidget({
    this.transactionAmountType,
    this.amount,
    this.amountCurrency,
    this.amountColor,
    this.currencyColor,
    this.amountTextLevel,
    this.currencyTextLevel,
    this.amountStyle,
    this.currencyStyle,
  });

  @override
  Widget build(BuildContext context) {
    final KITransactionAmountTheme theme = context.transactionAmountTheme;

    final AppTextStyle effectiveAmountValueStyle =
        amountStyle ?? theme.properties.amountValueStyle;
    final AppTextStyle effectiveCurrencyStyle =
        currencyStyle ?? theme.properties.currencyStyle;

    return Visibility(
      visible: amount != null,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Row(
          children: [
            AppText(
              "${getAmountSign()}${removeSignFromAmountIfHasIt()}",
              style: amountStyle ??
                  effectiveAmountValueStyle.copyWith(
                    color: amountColor ?? getAmountColor(theme),
                    level: amountTextLevel,
                  ),
            ),
            const AppGap.xxs(),
            AppText(
              amountCurrency ?? "",
              style: currencyStyle ??
                  effectiveCurrencyStyle.copyWith(
                    color: currencyColor ?? getCurrencyColor(theme),
                    level: currencyTextLevel,
                  ),
            )
          ],
        ),
      ),
    );
  }

  String? removeSignFromAmountIfHasIt() =>
      amount?.replaceAll("-", "").replaceAll("+", "");

  String getAmountSign() {
    if (transactionAmountType == null) return '';
    return amount != "0"
        ? transactionAmountType == KITransactionAmountType.subscribe
            ? '+'
            : '-'
        : '';
  }

  Color? getAmountColor(KITransactionAmountTheme theme) {
    return transactionAmountType == KITransactionAmountType.subscribe
        ? theme.colors.amountSubscribeColor
        : theme.colors.amountRedeemColor;
  }

  Color? getCurrencyColor(KITransactionAmountTheme theme) {
    return transactionAmountType == KITransactionAmountType.subscribe
        ? theme.colors.currencySubscribeColor
        : theme.colors.currencyRedeemColor;
  }
}
