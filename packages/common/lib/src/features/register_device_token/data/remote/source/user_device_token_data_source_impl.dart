import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';
import 'package:invest_common/src/features/register_device_token/data/remote/services/user_service.dart';
import 'package:invest_common/src/features/register_device_token/data/remote/source/user_device_token_data_source.dart';
import 'package:common_dependencies/common_dependencies.dart';

@Injectable(as: UserDeviceTokenDataSource)
class UserDeviceTokenDataSourceImpl implements UserDeviceTokenDataSource {
  final UserService _service;

  const UserDeviceTokenDataSourceImpl(this._service);

  @override
  Future<void> registerDeviceFCMToken(UserDeviceTokenRequestModel model) {
    return _service.registerDeviceFCMToken(model);
  }
}
