import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';

@RoutePage()
class RegistrationSuccessScreen extends StatelessWidget {
  const RegistrationSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KISuccessfulScreen(
      title: AuthenticationLocalizations.of(context)
          .authenticationRegistrationSuccessTitle,
      description: AuthenticationLocalizations.of(context)
          .authenticationRegistrationSuccessDescripation,
      button: AppButton.contrast(
        title: AuthenticationLocalizations.of(context).login,
        mainAxisSize: MainAxisSize.max,
        onTap: () => context.router.replaceAll([
          LandingRouteRoute(),
          LoginRoute()]),
      ),
    );
  }
}
