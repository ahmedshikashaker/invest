import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import 'package:retrofit/retrofit.dart';
import 'package:kib_core/kib_core.dart';

import '../../../../../config/end_points/authentication_end_points.dart';
import '../../models/login_request.dart';

part 'login_service.g.dart';

@RestApi()
@injectable
abstract class LoginService {
  @factoryMethod
  factory LoginService(Dio dio) = _LoginService;

  @POST(AuthenticationEndpoints.loginEndPoint)
  @Extra({"disableRefreshToken": true, includeAppCheckTokenToAPIKey: true})
  Future<APIResponse<LoginResponseModel>> login({
    @Body() required LoginRequest loginRequest,
  });
}
