import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/models/otp_request_model.dart';
import '../data/models/otp_response_model.dart';
import '../data/repository/otp_repository.dart';

@Injectable()
class RequestOTPUseCase {
  final OTPRepository _repository;

  const RequestOTPUseCase(this._repository);

  Future<Either<AppExceptions, OtpResponseModel?>> call(
          OTPRequestModel otpRequest) async =>
      _repository.requestOtp(otpRequest);
}
