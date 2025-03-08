import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/models/init/forget_password_init_request.dart';
import '../data/models/init/forget_password_init_response.dart';
import '../data/repository/forget_password_repository.dart';

@injectable
class ForgetPasswordInitUsecase {
  final ForgetPasswordRepository repository;

  const ForgetPasswordInitUsecase(this.repository);

  Future<Either<AppExceptions, ForgetPasswordInitResponseModel>> call(
      ForgetPasswordInitRequest request) async {
    return await repository.forgetPasswordInit(forgetPasswordInitRequest: request);
  }
}
