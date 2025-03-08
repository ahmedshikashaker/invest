import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'info_body_widget.dart';
import 'info_heading_widget.dart';

class KIInfoScreen extends StatelessWidget {
  final AppEdgeInsets? headingPadding;
  final AppEdgeInsets? buttonPadding;
  final AppEdgeInsets? contentPadding;
  final AppGapSize? gapTitle;
  final AppGapSize? gapIcon;
  final AppGapSize? gapBody;
  final AppTextStyle? titleStyle;
  final AppTextStyle? descriptionStyle;
  final Gradient? gradient;
  final Color? backgroundColor;
  final TextAlign? titleAlign;
  final TextAlign? descriptionAlign;
  final TextOverflow? descriptionOverflow;

  final String? title;
  final String? description;
  final AppButton? button;
  final Widget? child;
  final Widget? icon;
  final Widget? backgroundWidget;
  final Widget? bottomWidget;
  final Widget? descriptionWidget;
  final int? maxLine;
  final Widget? actionWidget;
  final bool? kibLogoEnabled;
  final Widget? kibLogoWidget;

  const KIInfoScreen({
    Key? key,
    this.title,
    this.description,
    this.button,
    this.child,
    this.icon,
    this.descriptionWidget,
    this.maxLine,
    this.backgroundWidget,
    this.bottomWidget,
    this.kibLogoEnabled = true,
    this.kibLogoWidget,
    this.actionWidget,
    this.headingPadding,
    this.buttonPadding,
    this.contentPadding,
    this.gapTitle,
    this.gapIcon,
    this.gapBody,
    this.titleStyle,
    this.descriptionStyle,
    this.gradient,
    this.backgroundColor,
    this.titleAlign,
    this.descriptionAlign,
    this.descriptionOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor =
        backgroundColor ?? context.infoTheme.colors.backgroundColor;

    final AppEdgeInsets effectiveContentPadding =
        contentPadding ?? context.infoTheme.properties.contentPadding;

    final AppEdgeInsets effectiveButtonPadding =
        buttonPadding ?? context.infoTheme.properties.buttonPadding;

    return AppScaffold(
      body: AppContainer(
        decoration: BoxDecoration(
          gradient: gradient,
          color: effectiveBackgroundColor,
        ),
        child: Stack(
          children: [
            if (backgroundWidget != null)
              Positioned.fill(child: backgroundWidget!),
            Column(
              children: [
                InfoHeadingWidget(
                  headingPadding: headingPadding,
                  kibLogoEnabled: kibLogoEnabled,
                  kibLogoWidget: kibLogoWidget,
                  actionWidget: actionWidget,
                ),
                Expanded(
                  child: AppPadding(
                    padding: effectiveContentPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoBodyWidget(
                            gapTitle: gapTitle,
                            gapIcon: gapIcon,
                            gapBody: gapBody,
                            titleStyle: titleStyle,
                            descriptionStyle: descriptionStyle,
                            titleAlign: titleAlign,
                            descriptionAlign: descriptionAlign,
                            descriptionOverflow: descriptionOverflow,
                            child: child,
                            icon: icon,
                            title: title,
                            description: description,
                            descriptionWidget: descriptionWidget,
                            maxLine: maxLine),
                        AppPadding(
                            padding: effectiveButtonPadding,
                            child: button ?? bottomWidget),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
