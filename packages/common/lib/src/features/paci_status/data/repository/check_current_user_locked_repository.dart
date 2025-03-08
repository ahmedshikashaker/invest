abstract class CheckCurrentUserLockedRepository {
  Future<void> storePACILock({required String id, required DateTime dateTime});
  Future<bool?> isCurrentUserPACILocked();
}
