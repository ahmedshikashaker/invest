import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';

class OnboardingTopWidget extends StatelessWidget {
  const OnboardingTopWidget();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          NavBarWidget(),
          AppContainer(
            alignment: Alignment.center,
            padding: AppEdgeInsets.xxl(),
            child: LogoImage(),
          )
        ],
      ),
    );
  }
}
