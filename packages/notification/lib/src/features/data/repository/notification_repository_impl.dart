import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/data/remote/source/notification_remote_data_source.dart';
import 'package:notification/src/features/data/repository/notification_repository.dart';

@Injectable(as: NotificationRepository)
class NotificationRepositoryImpl implements NotificationRepository {
  final NotificationRemoteDataSource remoteDataSource;

  const NotificationRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<AppExceptions, NotificationsResponse>> getNotificationData(
    NotificationPagination notificationPagination,
  ) async =>
      executeSafely(() async =>
          remoteDataSource.getNotificationData(notificationPagination));

  @override
  Future<Either<AppExceptions, void>> updateNotificationStatus(
    String notificationId,
  ) async =>
      executeSafely(() async =>
          remoteDataSource.updateNotificationStatus(notificationId));
}
