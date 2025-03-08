import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class InfoBodyWidget extends StatelessWidget {
  final AppGapSize? gapTitle;
  final AppGapSize? gapIcon;
  final AppGapSize? gapBody;
  final AppTextStyle? titleStyle;
  final AppTextStyle? descriptionStyle;
  final TextAlign? titleAlign;
  final TextAlign? descriptionAlign;
  final TextOverflow? descriptionOverflow;
  final Widget? child;
  final Widget? icon;
  final String? title;
  final String? description;
  final Widget? descriptionWidget;
  final int? maxLine;

  const InfoBodyWidget(
      {super.key,
      this.gapTitle,
      this.gapIcon,
      this.gapBody,
      this.titleStyle,
      this.descriptionStyle,
      this.titleAlign,
      this.descriptionAlign,
      this.descriptionOverflow,
      this.child,
      this.icon,
      this.title,
      this.description,
      this.descriptionWidget,
      this.maxLine});

  @override
  Widget build(BuildContext context) {
    final AppGapSize effectiveGapIcon =
        gapIcon ?? context.infoTheme.properties.gapIcon;

    final AppGapSize effectiveGapTitle =
        gapTitle ?? context.infoTheme.properties.gapTitle;

    final AppGapSize effectiveGapBody =
        gapBody ?? context.infoTheme.properties.gapBody;

    final AppTextStyle effectiveTitleStyle =
        titleStyle ?? context.infoTheme.properties.titleStyle;

    final AppTextStyle effectiveDescriptionStyle =
        descriptionStyle ?? context.infoTheme.properties.descriptionStyle;

    final TextAlign effectiveTitleAlign =
        titleAlign ?? context.infoTheme.properties.titleAlign;

    final TextAlign effectiveDescriptionAlign =
        descriptionAlign ?? context.infoTheme.properties.descriptionAlign;

    final TextOverflow effectiveDescriptionOverflow =
        descriptionOverflow ?? context.infoTheme.properties.descriptionOverflow;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (icon != null) icon!,
        AppGap(effectiveGapIcon),
        if (title != null && (title ?? "").isNotEmpty)
          AppText(
            textAlign: effectiveTitleAlign,
            title ?? "",
            style: effectiveTitleStyle,
          ),
        if (title != null && (title ?? "").isNotEmpty)
          AppGap(effectiveGapTitle),
        if (description != null && (description ?? "").isNotEmpty)
          AppContainer(
            alignment: AlignmentDirectional.center,
            child: descriptionWidget ??
                AppText.bodyRegular(description ?? "",
                    textAlign: effectiveDescriptionAlign,
                    maxLines: maxLine ?? 3,
                    overflow: effectiveDescriptionOverflow,
                    style: effectiveDescriptionStyle),
          ),
        child ?? AppGap(effectiveGapBody),
      ],
    );
  }
}
