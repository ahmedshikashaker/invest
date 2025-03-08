import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:authentication/src/l10n/gen/authentication_localizations.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<RegistrationCubit>();

    return AppButton.contrast(
      title: AuthenticationLocalizations.of(context)
          .authenticationRegistrationButtonContinue,
      mainAxisSize: MainAxisSize.max,
      state: cubit.isValid
          ? cubit.state.maybeWhen(
              loading: () => AppButtonState.loading,
              orElse: () => AppButtonState.enabled,
            )
          : AppButtonState.disabled,
      onTap: () => cubit.requestEmailVerify(),
    );
  }
}
