import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/models/login_request.dart';
import '../data/models/login_response.dart';
import '../data/repository/login_repository.dart';

@injectable
class LoginUsecase {
  final LoginRepository repository;

  const LoginUsecase(this.repository);

  Future<Either<AppExceptions, LoginResponseModel>> login(
      LoginRequest request) async {
    return await repository.login(loginRequest: request);
  }
}
