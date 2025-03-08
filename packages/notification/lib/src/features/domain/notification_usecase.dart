import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import 'package:notification/src/features/data/models/notification_pagination.dart';
import 'package:notification/src/features/data/models/notification_response.dart';
import 'package:notification/src/features/data/repository/notification_repository.dart';

@injectable
class NotificationUseCase
    implements BaseUseCase<NotificationsResponse, NotificationPagination> {
  final NotificationRepository repository;

  const NotificationUseCase(this.repository);

  @override
  Future<Either<AppExceptions, NotificationsResponse>> call(
    NotificationPagination notificationPagination,
  ) =>
      repository.getNotificationData(notificationPagination);
}
