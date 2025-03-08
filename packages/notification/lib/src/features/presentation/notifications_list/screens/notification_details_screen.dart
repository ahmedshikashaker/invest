import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/presentation/notifications_list/screens/widget/notification_icon_widget.dart';

@RoutePage()
class NotificationDetailsScreen extends StatelessWidget {
  const NotificationDetailsScreen({super.key, required this.notificationModel});

  final NotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Scaffold(
      // title: context.notificationsDetailsTitle,
      body: AppPadding.l(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NotificationIconWidget(size: 64),
            const AppGap.m(),
            AppText.bodyBold(
              notificationModel.title ?? '-',
              color: theme.colors.textBodyPrimary,
            ),
            AppText.captionBold(
              AppDateFormatter(notificationModel.createdAt).EEEEddMMMyyyyhmma(),
              color: theme.colors.textBodySecondary,
            ),
            const AppGap.m(),
            AppText.bodyRegular(
              notificationModel.description ?? '-',
              color: theme.colors.textBodySecondary,
              textAlign: TextAlign.center,
            ),
            const AppGap.x9l(),
          ],
        ),
      ),
    );
  }
}
