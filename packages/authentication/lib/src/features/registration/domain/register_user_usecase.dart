import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class RegisterUserUsecase implements BaseUseCase<void, RegisterRequestModel> {
  final RegistrationRepository repository;

  const RegisterUserUsecase(this.repository);

  @override
  Future<Either<AppExceptions, void>> call(
    RegisterRequestModel registerUser,
  ) async {
    return await repository.registerUser(registerUser);
  }
}
