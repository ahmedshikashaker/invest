import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:authentication/src/l10n/gen/authentication_localizations.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class ConfirmPasswordTextfield extends StatelessWidget {
  const ConfirmPasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField.password(
      label: AuthenticationLocalizations.of(context)
          .authenticationRegistrationLabelConfirmPassword,
      onChanged: (password) {
        context.read<RegistrationCubit>().changeConfirmPassword(password);
      },
    );
  }
}
