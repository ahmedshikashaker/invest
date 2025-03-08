import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../remote/sources/forget_password_remote_data_source.dart';
import 'forget_password_repository.dart';

@Injectable(as: ForgetPasswordRepository)
class ForgetPasswordRepositoryImpl extends ForgetPasswordRepository {
  final ForgetPasswordRemoteDataSource _remoteDataSource;

  ForgetPasswordRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<AppExceptions, ForgetPasswordInitResponseModel>>
      forgetPasswordInit({
    required ForgetPasswordInitRequest forgetPasswordInitRequest,
  }) async {
    try {
      final result = await _remoteDataSource.forgetPasswordInit(
          forgetPasswordInitRequest: forgetPasswordInitRequest);

      return right(result.data);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, ForgetPasswordResetResponseModel>>
      forgetPasswordReset(
          {required ForgetPasswordResetRequest
              forgetPasswordResetRequest}) async {
    try {
      final result = await _remoteDataSource.forgetPasswordReset(
          forgetPasswordResetRequest: forgetPasswordResetRequest);

      return right(result.data);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }

  @override
  Future<Either<AppExceptions, ForgetPasswordVerifyResponseModel>>
      forgetPasswordVerify(
          {required ForgetPasswordVerifyRequest
              forgetPasswordVerifyRequest}) async {
    try {
      final result = await _remoteDataSource.forgetPasswordVerify(
          forgetPasswordVerifyRequest: forgetPasswordVerifyRequest);

      return right(result.data);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
