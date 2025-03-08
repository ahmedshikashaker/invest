import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:authentication/src/features/registration/data/remote/sources/registration_remote_data_source.dart';
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

@Injectable(as: RegistrationRepository)
class RegistrationRepositoryImpl extends RegistrationRepository {
  RegistrationRemoteDataSource _remoteDataSource;

  RegistrationRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> requestVerifyEmail(
    RequestVerifyEmailRequestModel emailRequest,
  ) async {
    try {
      return right(await _remoteDataSource.requestVerifyEmail(emailRequest));
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> verifyEmail(
    VerifyRequestModel emailRequest,
  ) async {
    try {
      return right(await _remoteDataSource.verifyEmail(emailRequest));
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>>
      requestVerifyMobileNumber(
    RequestVerifyMobileNumberRequestModel mobileRequest,
  ) async {
    try {
      return right(
          await _remoteDataSource.requestVerifyMobileNumber(mobileRequest));
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> verifyMobileNumber(
    VerifyRequestModel mobileRequest,
  ) async {
    try {
      return right(await _remoteDataSource.verifyMobileNumber(mobileRequest));
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, void>> registerUser(
      RegisterRequestModel registerUser) async {
    try {
      return right(await _remoteDataSource.registerUser(registerUser));
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
