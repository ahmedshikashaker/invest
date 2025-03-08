import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

/// Example of a `KIOnboardingItem`:
///
/// ```
/// KIOnboardingItem(
///   statusTextStyle: AppTextStyle(
///     level: AppTextLevel.tinyBold,
///     color: context.tokens.colors.textBodyPrimary,
///   ),
///   title: "Financial profile",
///   statusTitle: "Completed",
///   progressIndicator: KIProgressIndicator(
///     progress: 1,
///     height: 4.rh,
///   ),
///   state: OnboardingItemState.inactive,
///   avatar: KICircularAvatar(
///     icon: Assets.icons.check,
///     iconColor: AppColorsData.white,
///     backgroundColor: AppColorsData.sea.shade500,
///     border: Border.all(
///       color: AppColorsData.sea.shade300,
///     ),
///   ),
/// )
/// ```

enum OnboardingItemState { active, inactive }

class KIOnboardingItem extends StatelessWidget {
  final OnboardingItemState? state;
  final AppTextStyle? titleTextStyle;
  final AppTextStyle? statusTextStyle;
  final AppEdgeInsets? sidesPadding;
  final AppGap? avatarTitleSpace;
  final AppGap? titleProgBarSpace;
  final AppGap? progBarStatTitleSpace;
  final BorderRadiusGeometry? borderRadius;
  final String title;
  final String statusTitle;
  final Color? backgroundColor;
  final Color? inactiveOverlayColor;

  /// KIProgressIndicator can be used as a progress indicator
  final Widget progressIndicator;

  /// KICircularAvatar can be used as an avatar
  final Widget avatar;
  final List<BoxShadow>? shadow;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  const KIOnboardingItem({
    super.key,
    this.state = OnboardingItemState.inactive,
    this.titleTextStyle,
    this.statusTextStyle,
    this.sidesPadding,
    this.borderRadius,
    required this.title,
    required this.statusTitle,
    this.backgroundColor,
    required this.progressIndicator,
    required this.avatar,
    this.avatarTitleSpace,
    this.titleProgBarSpace,
    this.progBarStatTitleSpace,
    this.shadow,
    this.inactiveOverlayColor,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color ItemBackgroundColor =
        backgroundColor ?? context.onboardingItemTheme.tokens.colors.surface;
    final AppTextStyle itemTitleTextStyle =
        titleTextStyle ?? context.onboardingItemTheme.properties.titleTextStyle;
    final AppTextStyle itemStatusTextStyle = statusTextStyle ??
        context.onboardingItemTheme.properties.statusTextStyle;
    final AppEdgeInsets itemSidesPadding =
        sidesPadding ?? context.onboardingItemTheme.properties.sidesPadding;
    final AppGap itemAvatarTitleSpace = avatarTitleSpace ??
        context.onboardingItemTheme.properties.avatarTitleSpace;
    final AppGap itemTitleProgBarSpace = titleProgBarSpace ??
        context.onboardingItemTheme.properties.titleProgBarSpace;
    final AppGap itemProgBarStatTitleSpace = progBarStatTitleSpace ??
        context.onboardingItemTheme.properties.progBarStatTitleSpace;
    final BorderRadiusGeometry ItemBorderRadius =
        borderRadius ?? context.onboardingItemTheme.properties.borderRadius;
    final List<BoxShadow> itemShadow =
        shadow ?? context.onboardingItemTheme.shadows.shadows;
    final Color? inactiveItemOverlayColor = inactiveOverlayColor ??
        context.onboardingItemTheme.colors.inactiveOverlayColor;
    final double itemWidth =
        width ?? context.onboardingItemTheme.properties.width;
    final double itemHeight =
        height ?? context.onboardingItemTheme.properties.height;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          AppContainer(
            width: itemWidth,
            height: itemHeight,
            decoration: BoxDecoration(
                color: ItemBackgroundColor,
                borderRadius: ItemBorderRadius,
                boxShadow:
                    state == OnboardingItemState.inactive ? null : itemShadow),
            padding: itemSidesPadding,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  avatar,
                  itemAvatarTitleSpace,
                  Expanded(
                    child: AppText(
                      title,
                      style: itemTitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  itemTitleProgBarSpace,
                  progressIndicator,
                  itemProgBarStatTitleSpace,
                  AppText(
                    statusTitle,
                    style: itemStatusTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ]),
          ),
          Visibility(
            visible: state == OnboardingItemState.inactive,
            child: Positioned.fill(
              child: AppContainer(
                width: itemWidth,
                height: itemHeight,
                decoration: BoxDecoration(
                  color: inactiveItemOverlayColor,
                  borderRadius: ItemBorderRadius,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
