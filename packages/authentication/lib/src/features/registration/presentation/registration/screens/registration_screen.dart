import 'package:authentication/src/common/common.dart';
import 'package:authentication/src/features/registration/presentation/registration/cubit/registration_cubit.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/confirm_password_textfield.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/continue_button.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/email_textfield.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/password_requirments_widget.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/password_textfield.dart';
import 'package:authentication/src/features/registration/presentation/registration/screens/widgets/registration_listener.dart';
import 'package:authentication/src/l10n/gen/authentication_localizations.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

@RoutePage()
class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AuthenticationLocalizations.of(context);

    return BlocProvider(
      create: (context) => getIt<RegistrationCubit>(),
      child: RegistrationListener(
        child: AuthScaffold(
          title: localizations.authenticationRegistrationTitleUserRegistration,
          subtitle: localizations
              .authenticationRegistrationSubtitleStartProvidingYourDetails,
          body: AppContainer(
            padding: AppEdgeInsets.only(
              top: AppGapSize.xl,
            ),
            child: Column(
              children: [
                EmailTextfield(),
                AppGap.xl(),
                PasswordTextfield(),
                AppGap.xl(),
                ConfirmPasswordTextfield(),
                PasswordRequirmentsWidget(),
              ],
            ),
          ),
          bottom: ContinueButton(),
        ),
      ),
    );
  }
}
