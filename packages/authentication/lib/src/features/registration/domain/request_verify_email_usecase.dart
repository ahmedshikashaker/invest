import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class RequestVerifyEmailUsecase
    implements
        BaseUseCase<ActionTokenResponseModel, RequestVerifyEmailRequestModel> {
  final RegistrationRepository repository;

  const RequestVerifyEmailUsecase(this.repository);

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> call(
    RequestVerifyEmailRequestModel verifyOtpRegisterRequest,
  ) async {
    return await repository.requestVerifyEmail(verifyOtpRegisterRequest);
  }
}
