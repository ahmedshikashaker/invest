import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';
// import 'package:notification/src/config/router/notification_app_router.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_cubit.dart';
import 'package:notification/src/features/presentation/notifications_list/screens/widget/notification_icon_widget.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key, required this.notification});

  final NotificationModel notification;

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NotificationCubit>();
    final theme = AppTheme.of(context);
    return InkWell(
      onTap: () {
        cubit.updateNotificationStatus(notification.id);
        // context.router
        //     .push(NotificationDetailsRoute(notificationModel: notification));
      },
      child: AppContainer(
        decoration: BoxDecoration(
          boxShadow: [theme.effects.shadows.shadow100Dark],
          color: theme.colors.surface,
          border: notification.isRead
              ? null
              : Border.all(color: theme.colors.active, width: 1.5),
          borderRadius: theme.radius.asBorderRadius().regular,
        ),
        child: MenuItemWidget(
          crossAxisAlignment: CrossAxisAlignment.start,
          title: notification.title ?? '-',
          titleOverFlow: TextOverflow.ellipsis,
          titleTextStyle: const AppTextStyle(
            level: AppTextLevel.captionMedium,
            textColorType: AppTextColorType.primary,
          ),
          subTitle: notification.description,
          subTitleMaxLines: 2,
          subTitleOverFlow: TextOverflow.ellipsis,
          subTitleTextStyle: AppTextStyle(
            level: AppTextLevel.tinyMedium,
            color: theme.colors.textBodySecondary,
          ),
          trailingWidget: AppText.tinyMedium(
            AppDateFormatter(notification.createdAt).EEEEhmma(),
            color: theme.colors.placeholder,
            height: 2.2.rh,
          ),
          leadingWidget: const AppPadding(
            padding: AppEdgeInsets.only(right: AppGapSize.m),
            child: NotificationIconWidget(size: 42),
          ),
        ),
      ),
    );
  }
}
