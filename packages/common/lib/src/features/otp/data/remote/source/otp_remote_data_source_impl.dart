import 'package:invest_common/src/features/otp/data/models/otp_request_model.dart';
import 'package:invest_common/src/features/otp/data/remote/service/otp_service.dart';
import 'package:invest_common/src/models/api_response.dart';
import 'package:common_dependencies/common_dependencies.dart';

import '../../models/otp_response_model.dart';
import 'otp_remote_data_source.dart';

@Injectable(as: OTPRemoteDataSource)
class OTPRemoteDataSourceImpl implements OTPRemoteDataSource {
  final OtpService _otpService;

  const OTPRemoteDataSourceImpl(this._otpService);

  @override
  Future<APIResponse<OtpResponseModel?>> requestOtp(
    OTPRequestModel otpRequest,
  ) async =>
      await _otpService.requestOtp(
        serviceType: otpRequest.serviceType?.type ?? "",
        otpRequest: otpRequest,
      );
}
