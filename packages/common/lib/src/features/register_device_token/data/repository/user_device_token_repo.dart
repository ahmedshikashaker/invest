import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';
import 'package:kib_core/kib_core.dart';

abstract class UserDeviceTokenRepository {
  EitherExceptionOrData<void> registerDeviceFCMToken(
    UserDeviceTokenRequestModel model,
  );
}
