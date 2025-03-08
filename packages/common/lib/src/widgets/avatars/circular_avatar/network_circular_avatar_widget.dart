import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KINetworkCircularAvatar extends StatelessWidget {
  final String url;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? iconSize;
  final String? iconPackageName;
  final AppEdgeInsets? borderPadding;
  final AppEdgeInsets? iconPadding;
  final BoxBorder? border;
  final bool fromCache;

  const KINetworkCircularAvatar({
    super.key,
    required this.url,
    this.iconColor,
    this.backgroundColor,
    this.iconSize,
    this.iconPackageName,
    this.borderPadding,
    this.fromCache = true,
    this.border,
    this.iconPadding,
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
          child: OptimizedNetworkSvgIcon(
            url: url,
            color: avatarIconColor,
            size: avatarIconSize,
          ),
        ),
      ),
    );
  }
}
