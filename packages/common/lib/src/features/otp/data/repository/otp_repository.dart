import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../models/otp_request_model.dart';
import '../models/otp_response_model.dart';

abstract class OTPRepository {
  Future<Either<AppExceptions, OtpResponseModel?>> requestOtp(
      OTPRequestModel otpRequest);
}
