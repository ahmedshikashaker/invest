import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/data/models/verify_request_model.dart';
import 'package:authentication/src/features/registration/domain/request_verify_mobile_number_usecase.dart';
import 'package:authentication/src/features/registration/domain/verify_mobile_usecase.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';
import 'mobile_otp_state.dart';

@injectable
class MobileOtpCubit extends Cubit<MobileOtpState> {
  final RequestVerifyMobileNumberUsecase requestVerifyMobileNumberUsecase;
  final VerifyMobileUsecase _verifyUseCase;

  late String actionToken;
  late String resendOTPActionToken;
  late String mobileNumber;

  MobileOtpCubit(
    this._verifyUseCase,
    this.requestVerifyMobileNumberUsecase,
  ) : super(const MobileOtpState.initial());

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
        emit(MobileOtpState.success(response.actionToken!));
      },
    );

    return response;
  }

  Future<Either<AppExceptions, void>> requestMobileVerify(_) async {
    final result = await requestVerifyMobileNumberUsecase(
      RequestVerifyMobileNumberRequestModel(
        mobileNumber: mobileNumber,
        actionToken: resendOTPActionToken,
      ),
    );

    return result;
  }
}
