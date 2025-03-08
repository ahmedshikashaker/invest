import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';

import '../models/otp_request_model.dart';
import '../models/otp_response_model.dart';
import '../remote/source/otp_remote_data_source.dart';
import 'otp_repository.dart';

@Injectable(as: OTPRepository)
class OTPRepositoryImpl extends OTPRepository {
  final OTPRemoteDataSource _otpRemoteDataSource;

  OTPRepositoryImpl(this._otpRemoteDataSource);

  @override
  Future<Either<AppExceptions, OtpResponseModel?>> requestOtp(
    OTPRequestModel otpRequest,
  ) async {
    try {
      final response = await _otpRemoteDataSource.requestOtp(otpRequest);

      return right(response.data);
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
