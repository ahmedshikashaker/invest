import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';

abstract class RegistrationRemoteDataSource {
  Future<ActionTokenResponseModel> requestVerifyEmail(
    RequestVerifyEmailRequestModel emailRequest,
  );

  Future<ActionTokenResponseModel> verifyEmail(
    VerifyRequestModel emailRequest,
  );

  Future<ActionTokenResponseModel> requestVerifyMobileNumber(
    RequestVerifyMobileNumberRequestModel mobileRequest,
  );

  Future<ActionTokenResponseModel> verifyMobileNumber(
    VerifyRequestModel mobileRequest,
  );

  Future<void> registerUser(RegisterRequestModel registerUser);
}
