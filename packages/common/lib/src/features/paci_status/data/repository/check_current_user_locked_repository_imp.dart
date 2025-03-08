import 'package:invest_common/common.dart';
import 'package:invest_common/src/features/paci_status/data/models/paci_lock_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

import 'check_current_user_locked_repository.dart';

@Injectable(as: CheckCurrentUserLockedRepository)
class CheckCurrentUserLockedRepositoryImp
    implements CheckCurrentUserLockedRepository {
  final RxStorage _storage;

  const CheckCurrentUserLockedRepositoryImp(this._storage);

  @override
  Future<void> storePACILock({
    required String id,
    required DateTime dateTime,
  }) async {
    await _storage.write(
      CacheKeys.paciLockKey,
      PACILockModel(
        id: id,
        date: dateTime,
      ),
      (paciLockModel) => paciLockModel,
    );
  }

  @override
  Future<bool?> isCurrentUserPACILocked() async {
    final res = await _storage.read(
      CacheKeys.paciLockKey,
      (o) => o as PACILockModel?,
    );
    return res?.date.isBefore(DateTime.now());
  }
}
