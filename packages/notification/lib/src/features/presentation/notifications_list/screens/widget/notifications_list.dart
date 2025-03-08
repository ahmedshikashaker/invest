import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_cubit.dart';
import 'package:notification/src/features/presentation/notifications_list/screens/widget/notification_widget.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    final cubit = context.watch<NotificationCubit>();
    final isLoading = cubit.isLoadingNotifications;
    final isLoadingMore = cubit.isLoadingMoreNotifications;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: cubit.notifications.isNotEmpty,
              child:
                  // ScrollNotificationListener(
                  //   onReachLimit: () => cubit.getNotifications(paging: true),
                  //   hasMorePage: cubit.paging.canPaginate,
                  //   itemLength: cubit.notifications.length,
                  //   child:
                  ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const AppEdgeInsets.only(bottom: AppGapSize.m)
                    .toEdgeInsets(theme),
                itemCount: cubit.notifications.length,
                itemBuilder: (_, index) => NotificationWidget(
                    notification: cubit.notifications[index]),
                separatorBuilder: (_, __) => const AppGap.m(),
              ),
            ),
            // ),
            Visibility(
              visible: isLoading || isLoadingMore,
              child: LoadingComponent(
                itemCount: 2,
                margin: const AppEdgeInsets.symmetric(vertical: AppGapSize.m),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
