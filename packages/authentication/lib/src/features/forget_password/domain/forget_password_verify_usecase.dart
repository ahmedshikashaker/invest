import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/repository/forget_password_repository.dart';

@injectable
class ForgetPasswordVerifyUsecase {
  final ForgetPasswordRepository repository;

  const ForgetPasswordVerifyUsecase(this.repository);

  Future<Either<AppExceptions, ForgetPasswordVerifyResponseModel>> call(
      ForgetPasswordVerifyRequest request) async {
    return await repository.forgetPasswordVerify(
        forgetPasswordVerifyRequest: request);
  }
}
