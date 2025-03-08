import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';
import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';

abstract class NotificationRepository {
  Future<Either<AppExceptions, NotificationsResponse>> getNotificationData(
    NotificationPagination notificationPagination,
  );

  Future<Either<AppExceptions, void>> updateNotificationStatus(
    String notificationId,
  );
}
