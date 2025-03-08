import 'package:common_dependencies/common_dependencies.dart';

part 'paci_lock_model.freezed.dart';

@freezed
class PACILockModel with _$PACILockModel {
  const factory PACILockModel({
    required String id,
    required DateTime date,
  }) = _PACILockModel;
}
