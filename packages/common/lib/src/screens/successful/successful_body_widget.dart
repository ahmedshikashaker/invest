import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class SuccessfulBodyWidget extends StatelessWidget {
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

  const SuccessfulBodyWidget(
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
        gapIcon ?? context.successfulTheme.properties.gapIcon;

    final AppGapSize effectiveGapTitle =
        gapTitle ?? context.successfulTheme.properties.gapTitle;

    final AppGapSize effectiveGapBody =
        gapBody ?? context.successfulTheme.properties.gapBody;

    final AppTextStyle effectiveTitleStyle =
        titleStyle ?? context.successfulTheme.properties.titleStyle;

    final AppTextStyle effectiveDescriptionStyle =
        descriptionStyle ?? context.successfulTheme.properties.descriptionStyle;

    final TextAlign effectiveTitleAlign =
        titleAlign ?? context.successfulTheme.properties.titleAlign;

    final TextAlign effectiveDescriptionAlign =
        descriptionAlign ?? context.successfulTheme.properties.descriptionAlign;

    final TextOverflow effectiveDescriptionOverflow =
        descriptionOverflow ?? context.successfulTheme.properties.descriptionOverflow;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon ??
            Assets.images.states.successEllipse.image(
                package: "kib_design_system", width: 120.rw, height: 120.rh),
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
