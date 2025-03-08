import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

enum KITransactionType { redeem, subscribe }

class KITransaction extends StatelessWidget {
  KITransaction({
    this.borderRadius,
    this.messageStyle,
    this.backgroundColor,
    this.padding,
    this.titleMaxLines,
    this.titleOverFlow,
    required this.messageText,
    this.iconWidget,
    this.amountWidget,
    this.statusWidget,
    this.mainAxisAlignment,
    this.spacing,
  });

  final BorderRadiusGeometry? borderRadius;
  final int? titleMaxLines;
  final TextOverflow? titleOverFlow;
  final Color? backgroundColor;
  final AppEdgeInsets? padding;
  final double? spacing;
  final MainAxisAlignment? mainAxisAlignment;

  final String messageText;
  final Widget? iconWidget;
  final Widget? amountWidget;
  final Widget? statusWidget;

  final AppTextStyle? messageStyle;

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.transactionTheme.properties.borderRadius;

    final AppTextStyle effectiveMessageStyle =
        messageStyle ?? context.transactionTheme.properties.messageStyle;

    final AppEdgeInsets effectivePadding =
        padding ?? context.transactionTheme.properties.padding;

    final double effectiveSpacing =
        spacing ?? context.transactionTheme.properties.spacing;

    final MainAxisAlignment effectiveMainAxisAlignment = mainAxisAlignment ??
        context.transactionTheme.properties.mainAxisAlignment;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.transactionTheme.colors.backgroundColor;

    return AppContainer(
      padding: effectivePadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: effectiveBorderRadius,
        color: effectiveBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: effectiveSpacing,
        children: [
          MenuItemWidget(
            padding: AppEdgeInsets.none(),
            backgroundColor: effectiveBackgroundColor,
            title: messageText,
            titleMaxLines: titleMaxLines ?? 2,
            titleTextStyle: effectiveMessageStyle,
            titleOverFlow: titleOverFlow ?? TextOverflow.ellipsis,
            leadingWidget: iconWidget,
            trailingWidget: amountWidget,
          ),
          if (statusWidget != null)
            Row(
              mainAxisAlignment: effectiveMainAxisAlignment,
              children: [
                statusWidget!,
              ],
            ),
        ],
      ),
    );
  }
}
