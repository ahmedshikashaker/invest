import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class PasswordTextfield extends StatelessWidget {
  const PasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField.password(
      label: AuthenticationLocalizations.of(context)
          .authenticationRegistrationLabelPassword,
      onChanged: (password) {
        context.read<RegistrationCubit>().changePassword(password);
      },
    );
  }
}
