import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

/// Example of a `KICircularAvatar`:
///
/// ```
/// KICircularAvatar(
///   icon: Assets.icons.check,
///   iconColor: AppColorsData.white,
///   backgroundColor: AppColorsData.sea.shade500,
///   border: Border.all(
///     color: AppColorsData.sea.shade300,
///   ),
/// )
/// ```

class KICircularAvatar extends StatelessWidget {
  final SvgGenImage? icon;
  final Widget? iconWidget;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? iconSize;
  final String? iconPackageName;
  final AppEdgeInsets? borderPadding;
  final AppEdgeInsets? iconPadding;
  final BoxBorder? border;

  const KICircularAvatar({
    super.key,
    this.icon,
    this.iconColor,
    this.backgroundColor,
    this.iconSize,
    this.iconPackageName,
    this.borderPadding,
    this.border,
    this.iconPadding,
    this.iconWidget,
  });

  @override
  Widget build(BuildContext context) {
    final Color avatarIconColor =
        iconColor ?? context.circularAvatarTheme.colors.iconColor;
    final Color avatarBackgroundColor =
        backgroundColor ?? context.circularAvatarTheme.colors.backgroundColor;
    final double avatarIconSize =
        iconSize ?? context.circularAvatarTheme.properties.iconSize;
    final AppEdgeInsets avatarBorderPadding =
        borderPadding ?? context.circularAvatarTheme.properties.padding;
    final AppEdgeInsets avatarIconPadding =
        iconPadding ?? context.circularAvatarTheme.properties.iconPadding;
    final BoxBorder avatarBorder =
        border ?? context.circularAvatarTheme.properties.border;

    return AppContainer(
      padding: avatarBorderPadding,
      decoration: BoxDecoration(
        border: avatarBorder,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: AppContainer(
          padding: avatarIconPadding,
          decoration: ShapeDecoration(
              shape: const CircleBorder(), color: avatarBackgroundColor),
          child: iconWidget ??
              AppIcon(
                icon: icon ?? Assets.icons.avatar,
                color: avatarIconColor,
                size: avatarIconSize,
                package: iconPackageName ?? "kib_design_system",
              ),
        ),
      ),
    );
  }
}
