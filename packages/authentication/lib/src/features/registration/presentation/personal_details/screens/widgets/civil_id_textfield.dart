import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/services.dart';

class CivilIdTextfield extends StatelessWidget {
  const CivilIdTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField.text(
      label: AuthenticationLocalizations.of(context)
          .authenticationPersonalDetailsRegistrationCivilId,
      keyboardType: TextInputType.number,
      textCapitalization: TextCapitalization.none,
      inputformatters: [
        LengthLimitingTextInputFormatter(12),
        FilteringTextInputFormatter.digitsOnly
      ],
      onChanged: (civilId) =>
          context.read<PersonalDetailsRegisterCubit>().changeCivilId(civilId),
    );
  }
}
