import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:authentication/src/features/registration/data/remote/services/registration_service.dart';
import 'package:authentication/src/features/registration/data/remote/sources/registration_remote_data_source.dart';
import 'package:common_dependencies/common_dependencies.dart';

@Injectable(as: RegistrationRemoteDataSource)
class RegistrationRemoteDataSourceImpl extends RegistrationRemoteDataSource {
  final RegistrationService _registerService;

  RegistrationRemoteDataSourceImpl(this._registerService);

  @override
  Future<ActionTokenResponseModel> requestVerifyEmail(
    RequestVerifyEmailRequestModel emailRequest,
  ) async {
    return (await _registerService.requestVerifyEmail(emailRequest)).data;
  }

  @override
  Future<ActionTokenResponseModel> verifyEmail(
    VerifyRequestModel emailRequest,
  ) async {
    return (await _registerService.verifyEmail(emailRequest)).data;
  }

  @override
  Future<ActionTokenResponseModel> requestVerifyMobileNumber(
    RequestVerifyMobileNumberRequestModel mobileRequest,
  ) async {
    return (await _registerService.requestVerifyMobileNumber(mobileRequest))
        .data;
  }

  @override
  Future<ActionTokenResponseModel> verifyMobileNumber(
    VerifyRequestModel mobileRequest,
  ) async {
    return (await _registerService.verifyMobileNumber(mobileRequest)).data;
  }

  @override
  Future<void> registerUser(RegisterRequestModel registerUser) async {
    return await _registerService.registerUser(registerUser);
  }
}
