import 'package:authentication/src/config/end_points/authentication_end_points.dart';
import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:invest_common/common.dart';

part 'registration_service.g.dart';

@RestApi()
@injectable
abstract class RegistrationService {
  @factoryMethod
  factory RegistrationService(Dio dio) = _RegistrationService;

  @POST(AuthenticationEndpoints.requestVerifyEmail)
  Future<APIResponse<ActionTokenResponseModel>> requestVerifyEmail(
    @Body() RequestVerifyEmailRequestModel request,
  );

  @POST(AuthenticationEndpoints.verifyEmail)
  Future<APIResponse<ActionTokenResponseModel>> verifyEmail(
    @Body() VerifyRequestModel request,
  );

  @POST(AuthenticationEndpoints.requestVerifyMobileNumber)
  Future<APIResponse<ActionTokenResponseModel>> requestVerifyMobileNumber(
    @Body() RequestVerifyMobileNumberRequestModel request,
  );

  @POST(AuthenticationEndpoints.verifyMobileNumber)
  Future<APIResponse<ActionTokenResponseModel>> verifyMobileNumber(
    @Body() VerifyRequestModel request,
  );

  @POST(AuthenticationEndpoints.registerUser)
  Future<void> registerUser(
    @Body() RegisterRequestModel registerUser,
  );
}
