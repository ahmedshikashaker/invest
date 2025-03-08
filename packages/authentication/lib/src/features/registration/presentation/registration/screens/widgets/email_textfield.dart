import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  const EmailTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField.text(
      label: AuthenticationLocalizations.of(context)
          .authenticationRegistrationLabelEmail,
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      onChanged: (email) {
        context.read<RegistrationCubit>().changeEmail(email);
      },
    );
  }
}
