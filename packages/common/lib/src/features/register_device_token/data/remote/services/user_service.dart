import 'package:invest_common/src/config/endpoints/common_endpoints.dart';
import 'package:invest_common/src/features/register_device_token/data/model/user_device_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:retrofit/retrofit.dart';

part 'user_service.g.dart';

@RestApi()
@injectable
abstract class UserService {
  @factoryMethod
  factory UserService(Dio dio) = _UserService;

  @POST(KIBInvestEndPoints.registerDeviceFCMTokenEndPoint)
  Future<void> registerDeviceFCMToken(@Body() UserDeviceTokenRequestModel body);
}
