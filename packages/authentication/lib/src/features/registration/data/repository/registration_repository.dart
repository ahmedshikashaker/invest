import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

abstract class RegistrationRepository {
  Future<Either<AppExceptions, ActionTokenResponseModel>> requestVerifyEmail(
    RequestVerifyEmailRequestModel emailRequest,
  );

  Future<Either<AppExceptions, ActionTokenResponseModel>> verifyEmail(
    VerifyRequestModel emailRequest,
  );

  Future<Either<AppExceptions, ActionTokenResponseModel>>
      requestVerifyMobileNumber(
    RequestVerifyMobileNumberRequestModel mobileRequest,
  );

  Future<Either<AppExceptions, ActionTokenResponseModel>> verifyMobileNumber(
    VerifyRequestModel mobileRequest,
  );

  Future<Either<AppExceptions, void>> registerUser(
    RegisterRequestModel registerUser,
  );
}
