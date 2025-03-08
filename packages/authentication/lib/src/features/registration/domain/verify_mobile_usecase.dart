import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class VerifyMobileUsecase
    implements BaseUseCase<ActionTokenResponseModel, VerifyRequestModel> {
  final RegistrationRepository repository;

  const VerifyMobileUsecase(this.repository);

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> call(
    VerifyRequestModel verifyRequest,
  ) async {
    return await repository.verifyMobileNumber(verifyRequest);
  }
}
