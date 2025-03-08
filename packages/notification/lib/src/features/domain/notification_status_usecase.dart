import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import 'package:notification/src/features/data/repository/notification_repository.dart';

@injectable
class NotificationStatusUseCase implements BaseUseCase<void, String> {
  final NotificationRepository repository;

  const NotificationStatusUseCase(this.repository);

  @override
  Future<Either<AppExceptions, void>> call(String id) async =>
      repository.updateNotificationStatus(id);
}
