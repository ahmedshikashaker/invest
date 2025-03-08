import 'package:authentication/authentication.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

abstract class ForgetPasswordRepository {
  Future<Either<AppExceptions, ForgetPasswordInitResponseModel>>
      forgetPasswordInit({
    required ForgetPasswordInitRequest forgetPasswordInitRequest,
  });

  Future<Either<AppExceptions, ForgetPasswordVerifyResponseModel>>
      forgetPasswordVerify({
    required ForgetPasswordVerifyRequest forgetPasswordVerifyRequest,
  });

  Future<Either<AppExceptions, ForgetPasswordResetResponseModel>>
      forgetPasswordReset({
    required ForgetPasswordResetRequest forgetPasswordResetRequest,
  });
}
