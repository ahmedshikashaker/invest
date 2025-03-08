import 'package:authentication/authentication.dart';

import 'package:invest_common/common.dart';

abstract class ForgetPasswordRemoteDataSource {
  Future<APIResponse<ForgetPasswordInitResponseModel>> forgetPasswordInit(
      {required ForgetPasswordInitRequest forgetPasswordInitRequest});

  Future<APIResponse<ForgetPasswordResetResponseModel>> forgetPasswordReset(
      {required ForgetPasswordResetRequest forgetPasswordResetRequest});

  Future<APIResponse<ForgetPasswordVerifyResponseModel>> forgetPasswordVerify(
      {required ForgetPasswordVerifyRequest forgetPasswordVerifyRequest});
}
