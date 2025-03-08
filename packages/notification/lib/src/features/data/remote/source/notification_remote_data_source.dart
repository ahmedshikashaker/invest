import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';

abstract class NotificationRemoteDataSource {
  Future<NotificationsResponse> getNotificationData(
    NotificationPagination notificationPagination,
  );

  Future<void> updateNotificationStatus(String notificationId);
}
