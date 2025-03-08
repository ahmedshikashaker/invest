import 'package:authentication/src/features/registration/data/models/register_request_model.dart';
import 'package:authentication/src/features/registration/data/models/request_verify_mobile_number_request_model.dart';
import 'package:authentication/src/features/registration/domain/register_user_usecase.dart';
import 'package:authentication/src/features/registration/domain/request_verify_mobile_number_usecase.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_state.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

@injectable
class PersonalDetailsRegisterCubit
    extends Cubit<PersonalDetailsRegistrationState> {
  final RequestVerifyMobileNumberUsecase requestVerifyMobileNumberUsecase;
  final RegisterUserUsecase registerUserUsecase;

  PersonalDetailsRegisterCubit(
    this.requestVerifyMobileNumberUsecase,
    this.registerUserUsecase,
  ) : super(PersonalDetailsRegistrationState.initial());

  String? civilId;
  String? password;
  String? mobileNumber;
  String? actionToken;

  bool get isCivilIdValid =>
      civilId != null &&
      civilId.isNotBlank &&
      civilId.isNumber &&
      civilId?.length == 12 &&
      civilId.checkCivilIdValidity();

  bool get isMobileNumberValid =>
      mobileNumber != null &&
      PhoneNumberModel.kw(mobileNumber ?? "").validate();

  bool get isValid => isCivilIdValid && isMobileNumberValid;

  void changeCivilId(String civilId) {
    this.civilId = civilId;
    emit(PersonalDetailsRegistrationState.onCivilIdChanged(civilId));
  }

  void changeMobileNumber(String mobileNumber) {
    this.mobileNumber = mobileNumber;
    emit(PersonalDetailsRegistrationState.onMobileNumberChanged(mobileNumber));
  }

  void requestMobileVerify() async {
    emit(PersonalDetailsRegistrationState.loading());
    final result = await requestVerifyMobileNumberUsecase(
      RequestVerifyMobileNumberRequestModel(
        mobileNumber: mobileNumber!,
        actionToken: actionToken,
      ),
    );

    result.fold(
      (error) => emit(
          PersonalDetailsRegistrationState.error(error, requestMobileVerify)),
      (response) =>
          emit(PersonalDetailsRegistrationState.success(response.actionToken!)),
    );
  }

  void registerUser() async {
    emit(PersonalDetailsRegistrationState.loading());
    final result = await registerUserUsecase(
      RegisterRequestModel(
        civilId: civilId!,
        actionToken: actionToken!,
        password: password!,
      ),
    );
    result.fold(
      (error) =>
          emit(PersonalDetailsRegistrationState.error(error, registerUser)),
      (_) => emit(PersonalDetailsRegistrationState.successfullyCreateUser()),
    );
  }
}
