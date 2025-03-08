import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/repository/forget_password_repository.dart';

@injectable
class ForgetPasswordResetUsecase {
  final ForgetPasswordRepository repository;

  const ForgetPasswordResetUsecase(this.repository);

  Future<Either<AppExceptions, ForgetPasswordResetResponseModel>> call(
      ForgetPasswordResetRequest request) async {
    return await repository.forgetPasswordReset(
        forgetPasswordResetRequest: request);
  }
}
