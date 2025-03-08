import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

class KIReviewDetailsItemWidget extends StatelessWidget {
  final String? title;
  final String? value;
  final AppTextStyle? titleStyle;
  final AppTextStyle? valueStyle;
  final Widget? titleWidget;
  final Widget? valueWidget;
  final Widget? trailingWidget;
  final Widget? leadingWidget;
  final bool? showDivider;
  final Color? backgroundColor;
  final Color? dividerColor;
  final AppEdgeInsets? padding;
  final AppEdgeInsets? dividerPadding;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final double? width;
  final Widget? dividerWidget;

  const KIReviewDetailsItemWidget({
    super.key,
     this.title,
     this.value,
    this.titleWidget,
    this.valueWidget,
    this.showDivider = true,
    this.trailingWidget,
    this.leadingWidget,
    this.backgroundColor,
    this.padding,
    this.titleStyle,
    this.valueStyle,
    this.dividerPadding,
    this.mainAxisAlignment,
    this.crossAxisAlignment,
    this.width,
    this.dividerColor, this.dividerWidget,
  });

  @override
  Widget build(BuildContext context) {
    final itemTitleTextStyle =
        titleStyle ?? context.reviewItemTheme.properties.titleTextStyle;
    final itemValueTextStyle =
        titleStyle ?? context.reviewItemTheme.properties.valueTextStyle;
    final itemDividerPadding =
        dividerPadding ?? context.reviewItemTheme.properties.dividerPadding;
    final itemMainAxisAlignment = mainAxisAlignment ??
        context.reviewItemTheme.properties.mainAxisAlignment;
    final itemPadding = padding ?? context.reviewItemTheme.properties.padding;
    final itemCrossAxisAlignment = crossAxisAlignment ??
        context.reviewItemTheme.properties.crossAxisAlignment;
    final itemWidth = width ?? context.reviewItemTheme.properties.width;
    final itemBackgroundColor =
        backgroundColor ?? context.reviewItemTheme.colors.backgroundColor;
    final itemDividerColor =
        dividerColor ?? context.reviewItemTheme.colors.dividerColor;

    return AppContainer(
      width: itemWidth,
      padding: itemPadding,
      decoration: BoxDecoration(
        color: itemBackgroundColor,
      ),
      child: Column(
        children: [
          Row(
            children: [
              leadingWidget ?? AppContainer(),
              Column(
                  crossAxisAlignment: itemCrossAxisAlignment,
                  mainAxisAlignment: itemMainAxisAlignment,
                  children: [
                    titleWidget ??
                        AppText.smallRegular(
                          title ?? "-",
                          style: itemTitleTextStyle,
                        ),
                    valueWidget ??
                        AppText.captionMedium(
                          value ?? "-",
                          style: itemValueTextStyle,
                        ),
                  ]),
              trailingWidget ?? AppContainer()
            ],
          ),
          Visibility(
              visible: showDivider == true,
              child: dividerWidget?? AppItemDivider(
                  color: itemDividerColor, padding: itemDividerPadding))
        ],
      ),
    );
  }
}
