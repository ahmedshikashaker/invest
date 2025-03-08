import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';
import 'package:invest_common/src/features/register_device_token/data/remote/source/user_device_token_data_source.dart';
import 'package:invest_common/src/features/register_device_token/data/repository/user_device_token_repo.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

@Injectable(as: UserDeviceTokenRepository)
class UserDeviceTokenRepositoryImpl implements UserDeviceTokenRepository {
  final UserDeviceTokenDataSource dataSource;

  UserDeviceTokenRepositoryImpl(this.dataSource);

  @override
  EitherExceptionOrData<void> registerDeviceFCMToken(
    UserDeviceTokenRequestModel model,
  ) async =>
      executeSafely(() => dataSource.registerDeviceFCMToken(model));
}
