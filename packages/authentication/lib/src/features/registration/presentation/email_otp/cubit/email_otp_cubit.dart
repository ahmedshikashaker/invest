import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:authentication/src/features/registration/domain/request_verify_email_usecase.dart';
import 'package:authentication/src/features/registration/domain/verify_email_usecase.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';
import 'email_otp_state.dart';

@injectable
class EmailOtpCubit extends Cubit<EmailOtpState> {
  final VerifyEmailUsecase _verifyUseCase;
  final RequestVerifyEmailUsecase _requestVerifyEmailUsecase;

  String? email;
  late String actionToken;

  EmailOtpCubit(
    this._verifyUseCase,
    this._requestVerifyEmailUsecase,
  ) : super(const EmailOtpState.initial());

  Future<Either<AppExceptions, void>> onVerifyOtp(otp) async {
    var response = await _verifyUseCase.call(
      VerifyRequestModel(
        otp: otp,
        actionToken: actionToken,
      ),
    );

    await response.fold(
      (_) => null,
      (response) async {
        emit(EmailOtpState.success(response.actionToken!));
      },
    );

    return response;
  }

  Future<Either<AppExceptions, void>> requestEmailVerify(_) async {
    final result = await _requestVerifyEmailUsecase.call(
      RequestVerifyEmailRequestModel(email: email!),
    );

    return result;
  }
}
