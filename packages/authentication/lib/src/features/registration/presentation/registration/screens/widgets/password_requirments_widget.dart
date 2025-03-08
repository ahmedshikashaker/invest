import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

import 'package:kib_design_system/widgets/requirements/model/requirement_model.dart';
import 'package:invest_common/common.dart';

class PasswordRequirmentsWidget extends StatelessWidget {
  const PasswordRequirmentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<RegistrationCubit>();
    final localizations = AuthenticationLocalizations.of(context);

    return AppRequirementsList(
      title: localizations.authenticationRegistrationRequirementsTitle,
      titleColorText: context.colors.textReversed,
      unselectedColorText: context.colors.textReversed,
      selectedColorIcon: context.colors.textReversed,
      selectedColorText: context.colors.textReversed,
      requirements: [
        Requirement(
          localizations.authenticationRegistrationRequirementsLength,
          checked: cubit.isPasswordLength,
        ),
        Requirement(
          localizations
              .authenticationRegistrationRequirementsUpperAndLowerAndNumberAndSpecialCharacter,
          checked: cubit.isPasswordFormatValid,
        ),
        Requirement(
          localizations.authenticationRegistrationRequirementsPasswordMatch,
          checked: cubit.isPasswordMatch,
        ),
      ],
    );
  }
}
