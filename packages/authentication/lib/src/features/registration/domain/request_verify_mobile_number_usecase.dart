import 'package:authentication/src/features/registration/data/models/action_token_response_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/repository/registration_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class RequestVerifyMobileNumberUsecase
    implements
        BaseUseCase<ActionTokenResponseModel,
            RequestVerifyMobileNumberRequestModel> {
  final RegistrationRepository repository;

  const RequestVerifyMobileNumberUsecase(this.repository);

  @override
  Future<Either<AppExceptions, ActionTokenResponseModel>> call(
    RequestVerifyMobileNumberRequestModel verifyOtpRegisterRequest,
  ) async {
    return await repository.requestVerifyMobileNumber(verifyOtpRegisterRequest);
  }
}
