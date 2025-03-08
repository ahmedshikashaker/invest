import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import '../services/login_service.dart';
import 'login_remote_data_source.dart';

@Injectable(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final LoginService _loginService;

  LoginRemoteDataSourceImpl(this._loginService);

  @override
  Future<APIResponse<LoginResponseModel>> login(
      {required LoginRequest loginRequest}) async {
    return await _loginService.login(loginRequest: loginRequest);
  }
}
