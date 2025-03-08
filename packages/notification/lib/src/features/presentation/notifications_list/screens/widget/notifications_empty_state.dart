import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_cubit.dart';

class NotificationsEmptyWidget extends StatelessWidget {
  const NotificationsEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<NotificationCubit>();
    return Visibility(
      visible: !cubit.isLoadingNotifications && cubit.notifications.isEmpty,
      child: Center(
        child: Scaffold(
            // title: context.notificationsEmptyStateNoNotificationFoundTitle,
            // content: context.notificationsEmptyStateNoNotificationFoundMessage,
            // icon: Assets.icons.notification,
            ),
      ),
    );
  }
}
