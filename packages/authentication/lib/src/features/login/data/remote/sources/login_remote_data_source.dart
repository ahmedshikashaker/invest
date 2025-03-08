import 'package:authentication/authentication.dart';
import 'package:invest_common/common.dart';

abstract class LoginRemoteDataSource {
  Future<APIResponse<LoginResponseModel>> login(
      {required LoginRequest loginRequest});
}
