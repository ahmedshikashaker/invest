import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';
import 'package:invest_common/src/features/register_device_token/data/repository/user_device_token_repo.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class UserDeviceTokenUseCase
    extends BaseUseCase<void, UserDeviceTokenRequestModel> {
  final UserDeviceTokenRepository _repository;

  UserDeviceTokenUseCase(this._repository);

  @override
  EitherExceptionOrData<void> call(UserDeviceTokenRequestModel params) =>
      _repository.registerDeviceFCMToken(params);
}
