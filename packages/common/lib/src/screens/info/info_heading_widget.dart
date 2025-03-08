import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'kib_invest_white_logo_widget.dart';

class InfoHeadingWidget extends StatelessWidget {
  final AppEdgeInsets? headingPadding;
  final bool? kibLogoEnabled;
  final Widget? kibLogoWidget;
  final Widget? actionWidget;

  const InfoHeadingWidget(
      {super.key,
      this.headingPadding,
      this.kibLogoEnabled,
      this.kibLogoWidget,
      this.actionWidget});

  @override
  Widget build(BuildContext context) {
    final AppEdgeInsets effectiveHeadingPadding =
        headingPadding ?? context.infoTheme.properties.headingPadding;

    return AppPadding(
      padding: effectiveHeadingPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          kibLogoEnabled ?? false
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SafeArea(
                      right: false,
                      left: false,
                      bottom: false,
                      top: true,
                      child: kibLogoWidget ??
                          DesignSystemBrandingCustomization
                              .customizedSuccessBrandingLogo ??
                          const KIWhiteLogoWidget(),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
          if (actionWidget != null)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SafeArea(
                  right: false,
                  left: false,
                  bottom: false,
                  top: true,
                  child: actionWidget ?? const SizedBox.shrink(),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
