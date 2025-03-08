import 'package:invest_common/src/features/paci_status/data/repository/check_current_user_locked_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCurrentUserLockedUseCase {
  final CheckCurrentUserLockedRepository _repository;

  const GetCurrentUserLockedUseCase(this._repository);

  Future<bool?> isCurrentUserPACILocked() async {
    return await _repository.isCurrentUserPACILocked();
  }

  Future<void> storePACILock({
    required String id,
    required DateTime dateTime,
  }) async {
    return await _repository.storePACILock(id: id, dateTime: dateTime);
  }
}
