import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';

class KIConvertFieldParams {
  final FocusNode? focusNode;
  final AppTextStyle? style;
  final AppTextStyle? currencyStyle;
  final Color? amountColor;

  final String? hintTitle;
  final String? amount;
  final String? currency;

  KIConvertFieldParams({
    this.focusNode,
    this.style,
    this.currencyStyle,
    this.amountColor,
    this.hintTitle,
    this.amount,
    this.currency,
  });
}

class KIConverterField extends StatelessWidget {
  final AppEdgeInsets? fieldPadding;
  final KIConvertFieldParams convertFieldParams;

  KIConverterField({
    this.fieldPadding,
    required this.convertFieldParams,
  });

  @override
  Widget build(BuildContext context) {
    final AppEdgeInsets effectiveFieldPadding =
        fieldPadding ?? context.converterFieldTheme.properties.fieldPadding;

    final AppTextStyle effectiveStyle = convertFieldParams.style ??
        context.converterFieldTheme.properties.amountStyle;

    final AppTextStyle effectiveCurrencyStyle =
        convertFieldParams.currencyStyle ??
            context.converterFieldTheme.properties.currencyStyle;

    final Color effectiveAmountColor = convertFieldParams.amountColor ??
        context.converterFieldTheme.colors.amountColor;

    return AppContainer(
      padding: effectiveFieldPadding,
      child: Row(
        children: [
          Expanded(
            child: AppTextField.amount(
              text: convertToAmount(convertFieldParams.amount ?? "0"),
              hint: convertToAmount(convertFieldParams.hintTitle ?? "0"),
              border: Border.all(
                color: context.converterFieldTheme.colors.borderFieldColor,
              ),
              textStyle: effectiveStyle
                  .toTextStyle(context)
                  .copyWith(color: effectiveAmountColor),
            ),
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: AppText(
                convertFieldParams.currency ?? '',
                style: effectiveCurrencyStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String convertToAmount(String amount) {
    return amount.toDouble().formatAmount(amount);
  }
}
