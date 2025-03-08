import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget(
      {super.key,
      this.cardTitle,
      this.cardDescription,
      this.iconColor,
      this.iconWidget,
      this.icon,
      this.titleStyle,
      this.descriptionStyle});

  final String? cardTitle;
  final String? cardDescription;
  final Color? iconColor;
  final SvgGenImage? icon;
  final Widget? iconWidget;
  final AppTextStyle? titleStyle;
  final AppTextStyle? descriptionStyle;

  @override
  Widget build(BuildContext context) {
    final Color effectiveIconColor =
        iconColor ?? context.uploadCardTheme.colors.iconColor;

    final AppTextStyle effectiveTitleStyle =
        titleStyle ?? context.uploadCardTheme.properties.titleStyle;

    final AppTextStyle effectiveDescriptionStyle =
        descriptionStyle ?? context.uploadCardTheme.properties.descriptionStyle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (cardTitle != null)
          Row(
            children: [
              if (icon != null) ...[
                AppIcon(
                  icon: icon!,
                  color: effectiveIconColor,
                ),
                AppGap.xs(),
              ] else if (iconWidget != null) ...[
                iconWidget!,
                AppGap.xs(),
              ],
              AppText(
                cardTitle!,
                style: effectiveTitleStyle,
              )
            ],
          ),
        if (cardDescription != null)
          AppText(
            cardDescription!,
            style: effectiveDescriptionStyle,
          ),
      ],
    );
  }
}
