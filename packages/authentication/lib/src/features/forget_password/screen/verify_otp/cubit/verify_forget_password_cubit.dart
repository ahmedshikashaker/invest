import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/forget_password_verify_usecase.dart';
import 'verify_forget_password_state.dart';

@injectable
class VerifyForgetPasswordCubit extends Cubit<VerifyForgetPasswordState> {
  VerifyForgetPasswordCubit(
      this._forgetPasswordVerifyUsecase, this._forgetPasswordInitUsecase)
      : super(const VerifyForgetPasswordState.initial());

  final ForgetPasswordVerifyUsecase _forgetPasswordVerifyUsecase;
  final ForgetPasswordInitUsecase _forgetPasswordInitUsecase;

  String actionToken = '';

  late String mobileNumber;
  late String civilId;

  Future<Either<AppExceptions, void>> onVerifyOtp(otp) async {
    var response = await _forgetPasswordVerifyUsecase(
      ForgetPasswordVerifyRequest(
        otp: otp,
        actionToken: actionToken,
      ),
    );

    await response.fold(
      (_) => null,
      (response) async {
        emit(VerifyForgetPasswordState.successForgetPasswordVerify(response));
      },
    );

    return response;
  }

  Future<Either<AppExceptions, ForgetPasswordInitResponseModel>>
      requestMobileVerify(_) async {
    final result = await _forgetPasswordInitUsecase(
      ForgetPasswordInitRequest(
        mobileNumber: mobileNumber,
        civilId: civilId,
      ),
    );
    actionToken = result.fold((_) {
      return '';
    }, (data) {
      return data.actionToken!;
    });
    return result;
  }
}
