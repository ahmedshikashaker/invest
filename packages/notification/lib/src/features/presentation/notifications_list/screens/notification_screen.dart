import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_cubit.dart';
import 'package:notification/src/features/presentation/notifications_list/screens/widget/notifications_empty_state.dart';
import 'package:notification/src/features/presentation/notifications_list/screens/widget/notifications_list.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NotificationCubit>()..getNotifications(),
      child: Scaffold(
        // withClose: false,
        // title: context.notificationsLabelNotifications,
        body: const AppPadding.m(
          child: Column(
            children: [NotificationsEmptyWidget(), NotificationList()],
          ),
        ),
      ),
    );
  }
}
