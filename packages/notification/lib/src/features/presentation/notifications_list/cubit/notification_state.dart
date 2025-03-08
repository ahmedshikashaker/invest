import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:notification/src/features/data/models/notification_response.dart';

part 'notification_state.freezed.dart';

@freezed
abstract class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  const factory NotificationState.loading() = _Loading;

  const factory NotificationState.refreshLoading() = _RefreshLoading;

  const factory NotificationState.minorError(AppExceptions error) = _MinorError;

  const factory NotificationState.loadMoreNotifications() =
      _LoadMoreNotifications;

  const factory NotificationState.notificationStatusUpdated() =
      _NotificationStatusUpdated;

  const factory NotificationState.error(String error) = _Error;

  const factory NotificationState.notificationsLoaded(
      List<NotificationModel> response) = _NotificationsLoaded;

  const factory NotificationState.overlayLoading() = _OverlayLoading;
}
