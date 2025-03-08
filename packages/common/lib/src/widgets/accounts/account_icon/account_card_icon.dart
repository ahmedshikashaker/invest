import 'package:kib_design_system/kib_design_system.dart';

import '../../../../../common.dart';

class KIAccountIconWidget extends StatelessWidget {
  final Color? backgroundColor;
  final double? iconSize;
  final bool matchTextDirection;
  final SvgGenImage? icon;
  final Color? iconColor;

  const KIAccountIconWidget(
      {Key? key,
      this.icon,
      this.iconSize,
      this.backgroundColor,
      this.matchTextDirection = false,
      this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    KIAccountIconTheme theme = context.accountIconTheme;
    final Color? effectiveIconColor = iconColor ?? theme.colors.iconColor;

    final double effectiveIconSize = iconSize ?? theme.properties.iconSize;

    final Color effectiveIconBackgroundColor =
        backgroundColor ?? theme.colors.iconBackgroundColor;

    return AppCategoryIcon(
      size: 42,
      backgroundColor: effectiveIconBackgroundColor,
      icon: AppIcon(
        matchTextDirection: matchTextDirection,
        icon: icon ?? Assets.icons.kib,
        color: effectiveIconColor,
        size: effectiveIconSize,
      ),
    );
  }
}
