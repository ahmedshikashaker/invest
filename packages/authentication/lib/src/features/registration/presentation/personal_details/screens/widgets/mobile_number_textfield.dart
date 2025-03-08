import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart';
import 'package:authentication/src/l10n/gen/authentication_localizations.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

class MobileNumberTextfield extends StatelessWidget {
  const MobileNumberTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return CountryTextField.withTooltip(
      hint: AuthenticationLocalizations.of(context)
          .authenticationPersonalDetailsRegistrationMobileNumber,
      keyboardType: TextInputType.number,
      onChanged: (mobile) => context
          .read<PersonalDetailsRegisterCubit>()
          .changeMobileNumber(mobile.replaceAll(" ", "")),
      flag: Assets.images.flags.countryKW.svg(package: "kib_design_system"),
      tooltip: null,
      tooltipTextColor: context.colors.critical,
      tooltipIconColor: context.colors.critical,
    );
  }
}
