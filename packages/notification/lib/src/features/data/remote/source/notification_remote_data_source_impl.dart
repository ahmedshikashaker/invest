import 'package:common_dependencies/common_dependencies.dart';
import 'package:injectable/injectable.dart';
import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/data/models/notification_status_request.dart';
import 'package:notification/src/features/data/remote/services/notification_service.dart';
import 'package:notification/src/features/data/remote/source/notification_remote_data_source.dart';

@Injectable(as: NotificationRemoteDataSource)
class NotificationRemoteDataSourceImpl implements NotificationRemoteDataSource {
  final NotificationService _service;

  const NotificationRemoteDataSourceImpl(this._service);

  @override
  Future<NotificationsResponse> getNotificationData(
    NotificationPagination notificationPagination,
  ) async =>
      await _service.getNotificationData(
        notificationPagination.pageNumber,
        notificationPagination.pageSize,
      );

  @override
  Future<void> updateNotificationStatus(String notificationId) async =>
      await _service.updateNotificationStatus(
        NotificationStatusRequest(),
        notificationId,
      );
}
