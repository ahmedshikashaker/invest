import 'package:kib_design_system/kib_design_system.dart';

import '../../../../../common.dart';

class KIAccountCard extends StatelessWidget {
  KIAccountCard({
    this.borderRadius,
    this.border,
    this.titleStyle,
    this.subTitleStyle,
    this.backgroundColor,
    this.padding,
    this.titleMaxLines,
    this.titleOverFlow,
    required this.titleText,
    this.subTitleText,
    this.iconWidget,
    this.trailingWidget,
    this.statusWidget,
  });

  final BorderRadiusGeometry? borderRadius;
  final Border? border;
  final int? titleMaxLines;
  final TextOverflow? titleOverFlow;
  final Color? backgroundColor;
  final AppEdgeInsets? padding;

  final String titleText;
  final String? subTitleText;
  final Widget? iconWidget;
  final Widget? trailingWidget;
  final Widget? statusWidget;

  final AppTextStyle? titleStyle;
  final AppTextStyle? subTitleStyle;

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.accountCardTheme.properties.borderRadius;

    final Border effectiveBorder =
        border ?? context.accountCardTheme.properties.border;

    final AppEdgeInsets effectivePadding =
        padding ?? context.accountCardTheme.properties.padding;

    final AppTextStyle effectiveTitleStyle =
        titleStyle ?? context.accountCardTheme.properties.titleStyle;

    final AppTextStyle effectiveSubTitleStyle =
        subTitleStyle ?? context.accountCardTheme.properties.subTitleStyle;

    final int effectiveTitleMaxLines =
        titleMaxLines ?? context.accountCardTheme.properties.titleMaxLines;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.accountCardTheme.colors.backgroundColor;

    return AppContainer(
      padding: effectivePadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: effectiveBorderRadius,
        color: effectiveBackgroundColor,
        border: effectiveBorder,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          MenuItemWidget(
            padding: AppEdgeInsets.none(),
            backgroundColor: effectiveBackgroundColor,
            title: titleText,
            titleMaxLines: effectiveTitleMaxLines,
            titleTextStyle: effectiveTitleStyle,
            titleOverFlow: titleOverFlow ?? TextOverflow.ellipsis,
            subTitle: subTitleText,
            subTitleTextStyle: effectiveSubTitleStyle,
            leadingWidget: iconWidget,
            trailingWidget: trailingWidget,
          ),
        ],
      ),
    );
  }
}
