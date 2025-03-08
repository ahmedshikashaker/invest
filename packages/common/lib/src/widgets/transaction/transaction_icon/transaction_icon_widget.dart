import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

import '../transaction.dart';

enum KITransactionIconType { redeem, subscribe }

class KITransactionsIconWidget extends StatelessWidget {
  final Color? backgroundColor;
  final double? iconSize;
  final bool matchTextDirection;
  final SvgGenImage? icon;
  final Color? iconColor;
  final AppEdgeInsets? padding;
  final KITransactionIconType transactionIconType;

  const KITransactionsIconWidget(
      {Key? key,
      this.icon,
      this.iconSize,
      this.backgroundColor,
      this.matchTextDirection = false,
      this.iconColor,
      required this.transactionIconType,
      this.padding})
      : super(key: key);

  factory KITransactionsIconWidget.redeem({Key? key}) {
    return KITransactionsIconWidget(
      key: key,
      matchTextDirection: false,
      transactionIconType: KITransactionIconType.redeem,
    );
  }

  factory KITransactionsIconWidget.subscribe({Key? key}) {
    return KITransactionsIconWidget(
      key: key,
      matchTextDirection: false,
      transactionIconType: KITransactionIconType.subscribe,
    );
  }

  @override
  Widget build(BuildContext context) {
    KITransactionIconTheme theme = context.transactionIconTheme;
    final Color? effectiveIconColor = iconColor ?? getIconColor(theme);

    final SvgGenImage effectiveIcon = icon ?? getIcon();

    final double effectiveIconSize =
        iconSize ?? context.transactionIconTheme.properties.iconSize;

    final Color effectiveIconBackgroundColor = backgroundColor ??
        context.transactionIconTheme.colors.iconBackgroundColor;

    final AppEdgeInsets effectivePadding =
        padding ?? context.transactionIconTheme.properties.padding;

    return AppPadding(
      padding: effectivePadding,
      child: AppCategoryIcon(
        size: 42,
        backgroundColor: effectiveIconBackgroundColor,
        icon: AppIcon(
          matchTextDirection: matchTextDirection,
          icon: effectiveIcon,
          color: effectiveIconColor,
          size: effectiveIconSize,
        ),
      ),
    );
  }

  Color? getIconColor(KITransactionIconTheme theme) {
    return transactionIconType == KITransactionIconType.subscribe
        ? theme.colors.iconSubscribeColor
        : theme.colors.iconRedeemColor;
  }

  SvgGenImage getIcon() {
    return transactionIconType == KITransactionIconType.subscribe
        ? Assets.icons.arrowBottomLeft
        : Assets.icons.arrowTopRight;
  }
}
