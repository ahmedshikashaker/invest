import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../models/login_request.dart';
import '../models/login_response.dart';

abstract class LoginRepository {
  Future<Either<AppExceptions, LoginResponseModel>> login({
    required LoginRequest loginRequest,

  });
}
