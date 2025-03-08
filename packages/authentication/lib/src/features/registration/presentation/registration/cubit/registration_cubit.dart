import 'package:authentication/src/features/registration/data/models/request_verify_email_request_model.dart';
import 'package:authentication/src/features/registration/domain/request_verify_email_usecase.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_state.dart';
import 'package:common_dependencies/common_dependencies.dart';

@injectable
class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(
    this._requestVerifyEmailUsecase,
  ) : super(RegistrationState.initial());

  final RequestVerifyEmailUsecase _requestVerifyEmailUsecase;

  String? email;
  String? password;
  String? confirmPassword;

  bool get isPasswordLength =>
      password != null && password!.length >= 8 && password!.length <= 20;

  bool get isPasswordFormatValid =>
      password != null &&
      password!.contains(RegExp(r'[A-Z]')) &&
      password!.contains(RegExp(r'[a-z]')) &&
      password!.contains(RegExp(r'[0-9]')) &&
      password!.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));

  bool get isPasswordMatch =>
      password != null &&
      confirmPassword != null &&
      password == confirmPassword;

  bool get isValid =>
      email != null &&
      password != null &&
      confirmPassword != null &&
      isPasswordLength &&
      isPasswordFormatValid &&
      isPasswordMatch;

  void changeEmail(String email) {
    this.email = email;
    emit(RegistrationState.onEmailChanged(email));
  }

  void changePassword(String password) {
    this.password = password;
    emit(RegistrationState.onPasswordChanged(password));
  }

  void changeConfirmPassword(String password) {
    this.confirmPassword = password;
    emit(RegistrationState.onConfirmPasswordChanged(password));
  }

  void requestEmailVerify() async {
    emit(RegistrationState.loading());
    final result = await _requestVerifyEmailUsecase.call(
      RequestVerifyEmailRequestModel(email: email!),
    );

    result.fold(
      (error) => emit(RegistrationState.error(error, requestEmailVerify)),
      (response) => emit(RegistrationState.success(response.actionToken!)),
    );
  }
}
