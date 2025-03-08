import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'successful_body_widget.dart';
import 'successful_heading_widget.dart';

class KISuccessfulScreen extends StatelessWidget {
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
  final bool? showBackgroundImg;

  const KISuccessfulScreen({
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
    this.showBackgroundImg = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color effectiveBackgroundColor =
        backgroundColor ?? context.successfulTheme.colors.backgroundColor;

    final AppEdgeInsets effectiveContentPadding =
        contentPadding ?? context.successfulTheme.properties.contentPadding;

    final AppEdgeInsets effectiveButtonPadding =
        buttonPadding ?? context.successfulTheme.properties.buttonPadding;

    return AppScaffold(
      body: AppContainer(
        decoration: BoxDecoration(
          gradient: gradient,
          color: effectiveBackgroundColor,
        ),
        child: Stack(
          children: [
            Visibility(
                visible: showBackgroundImg == true,
                replacement: backgroundWidget != null
                    ? Positioned.fill(child: backgroundWidget!)
                    : AppContainer(),
                child: Positioned.fill(
                    child: Image.asset(
                  context.successfulTheme.backgroundImages.backgroundImage,
                  fit: BoxFit.fill,
                  package: "invest_common",
                ))),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      SuccessfulHeadingWidget(
                        headingPadding: headingPadding,
                        kibLogoEnabled: kibLogoEnabled,
                        kibLogoWidget: kibLogoWidget,
                        actionWidget: actionWidget,
                      ),
                      AppPadding(
                        padding: effectiveContentPadding,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SuccessfulBodyWidget(
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

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                AppPadding(
                    padding: effectiveButtonPadding,
                    child: button ?? bottomWidget),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
