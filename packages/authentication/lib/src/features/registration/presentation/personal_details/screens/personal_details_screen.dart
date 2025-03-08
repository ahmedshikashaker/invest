import 'package:authentication/authentication.dart';
import 'package:authentication/src/common/common.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/cubit/personal_details_register_cubit.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/screens/widgets/civil_id_textfield.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/screens/widgets/continue_button.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/screens/widgets/mobile_number_textfield.dart';
import 'package:authentication/src/features/registration/presentation/personal_details/screens/widgets/personal_details_listener.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

@RoutePage()
class PersonalDetailsRegistrationScreen extends StatelessWidget {
  const PersonalDetailsRegistrationScreen({
    Key? key,
    required this.actionToken,
    required this.password,
  }) : super(key: key);

  final String actionToken;
  final String password;

  @override
  Widget build(BuildContext context) {
    final localizations = AuthenticationLocalizations.of(context);

    return BlocProvider(
      create: (context) => getIt<PersonalDetailsRegisterCubit>()
        ..actionToken = actionToken
        ..password = password,
      child: PopScope(
        canPop: false,
        child: PersonalDetailsListener(
          child: AuthScaffold(
            title: localizations
                .authenticationPersonalDetailsRegistrationTitleUserRegistration,
            subtitle: localizations
                .authenticationPersonalDetailsRegistrationSutitleFillYourPersonalDetails,
            body: AppContainer(
              padding: AppEdgeInsets.only(
                top: AppGapSize.xl,
              ),
              child: Column(
                children: [
                  CivilIdTextfield(),
                  AppGap.xl(),
                  MobileNumberTextfield(),
                ],
              ),
            ),
            bottom: ContinueButton(),
          ),
        ),
      ),
    );
  }
}
