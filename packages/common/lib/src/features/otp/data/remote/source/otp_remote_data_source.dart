import 'package:invest_common/src/models/api_response.dart';

import '../../models/otp_request_model.dart';
import '../../models/otp_response_model.dart';

abstract class OTPRemoteDataSource {
  Future<APIResponse<OtpResponseModel?>> requestOtp(OTPRequestModel otpRequest);
}
