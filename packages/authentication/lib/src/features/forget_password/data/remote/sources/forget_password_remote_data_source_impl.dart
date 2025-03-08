import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';

import 'package:invest_common/common.dart';
import '../services/forget_password_service.dart';
import 'forget_password_remote_data_source.dart';

@Injectable(as: ForgetPasswordRemoteDataSource)
class ForgetPasswordRemoteDataSourceImpl
    extends ForgetPasswordRemoteDataSource {
  final ForgetPasswordService _forgetPasswordService;

  ForgetPasswordRemoteDataSourceImpl(this._forgetPasswordService);

  @override
  Future<APIResponse<ForgetPasswordInitResponseModel>> forgetPasswordInit(
      {required ForgetPasswordInitRequest forgetPasswordInitRequest}) async {
    return await _forgetPasswordService.forgetPasswordInit(
        forgetPasswordInitRequest: forgetPasswordInitRequest);
  }

  @override
  Future<APIResponse<ForgetPasswordResetResponseModel>> forgetPasswordReset(
      {required ForgetPasswordResetRequest forgetPasswordResetRequest}) async {
    return await _forgetPasswordService.forgetPasswordReset(
        forgetPasswordResetRequest: forgetPasswordResetRequest);
  }

  @override
  Future<APIResponse<ForgetPasswordVerifyResponseModel>> forgetPasswordVerify(
      {required ForgetPasswordVerifyRequest
          forgetPasswordVerifyRequest}) async {
    return await _forgetPasswordService.forgetPasswordVerify(
        forgetPasswordVerifyRequest: forgetPasswordVerifyRequest);
  }
}
