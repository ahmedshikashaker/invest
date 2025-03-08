import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';

abstract class UserDeviceTokenDataSource {
  Future<void> registerDeviceFCMToken(UserDeviceTokenRequestModel model);
}
