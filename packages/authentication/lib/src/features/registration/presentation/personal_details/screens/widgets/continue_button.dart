import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<PersonalDetailsRegisterCubit>();
    return AppButton.contrast(
      title: AuthenticationLocalizations.of(context)
          .authenticationPersonalDetailsRegistrationButtonContinue,
      mainAxisSize: MainAxisSize.max,
      state: cubit.isValid
          ? cubit.state.maybeWhen(
              loading: () => AppButtonState.loading,
              orElse: () => AppButtonState.enabled,
            )
          : AppButtonState.disabled,
      onTap: () => cubit.requestMobileVerify(),
    );
  }
}
