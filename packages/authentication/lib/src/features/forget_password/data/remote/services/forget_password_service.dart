import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import 'package:retrofit/retrofit.dart';
import 'package:kib_core/kib_core.dart';

import '../../../../../config/end_points/authentication_end_points.dart';

part 'forget_password_service.g.dart';

@RestApi()
@injectable
abstract class ForgetPasswordService {
  @factoryMethod
  factory ForgetPasswordService(Dio dio) = _ForgetPasswordService;

  @POST(AuthenticationEndpoints.forgetPasswordInitEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  Future<APIResponse<ForgetPasswordInitResponseModel>> forgetPasswordInit({
    @Body() required ForgetPasswordInitRequest forgetPasswordInitRequest,
  });

  @POST(AuthenticationEndpoints.forgetPasswordVerifyEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  Future<APIResponse<ForgetPasswordVerifyResponseModel>> forgetPasswordVerify({
    @Body() required ForgetPasswordVerifyRequest forgetPasswordVerifyRequest,
  });

  @POST(AuthenticationEndpoints.forgetPasswordResetEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  Future<APIResponse<ForgetPasswordResetResponseModel>> forgetPasswordReset({
    @Body() required ForgetPasswordResetRequest forgetPasswordResetRequest,
  });
}
