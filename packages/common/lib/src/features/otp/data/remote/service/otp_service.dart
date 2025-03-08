import 'package:invest_common/common.dart';
import 'package:invest_common/src/features/otp/data/models/otp_request_model.dart';
import 'package:invest_common/src/features/otp/data/models/otp_response_model.dart';
import 'package:invest_common/src/models/api_response.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'otp_service.g.dart';

@RestApi()
@injectable
abstract class OtpService {
  @factoryMethod
  factory OtpService(Dio dio) = _OtpService;

  @POST(KIBInvestEndPoints.otpEndPoint)
  Future<APIResponse<OtpResponseModel?>> requestOtp({
    @Path("serviceType") required String serviceType,
    @Body() required OTPRequestModel otpRequest,
  });
}
