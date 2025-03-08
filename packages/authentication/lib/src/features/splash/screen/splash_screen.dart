import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';
import '../cubit/splash_cubit.dart';
import '../cubit/splash_state.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashCubit>(
      create: (context) => getIt<SplashCubit>()..navigateToOnBoarding(),
      child: BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.whenOrNull(
            pageChanged: () {
              bool isFirstEnter =
                  context.read<KiGlobalConfigCubit>().firstEnter;
              if (!isFirstEnter) {
                return context.router
                    .replaceNamed(AuthenticationModuleRoutes.landingPagePath);
              } else {
                return context.router
                    .replaceNamed(AuthenticationModuleRoutes.onboardingPagePath);
              }
            },
          );
        },
        child: AppScaffold(
          body: Builder(
            builder: (context) {
              return SplashScreenBodyWidget();
            },
          ),
        ),
      ),
    );
  }
}

class SplashScreenBodyWidget extends StatelessWidget {
  const SplashScreenBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            context.splashTheme.properties.imagePath,
            package: AuthModuleImages.brandingAssetPackage,
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            NavBarWidget(),
            Spacer(),
            AppContainer(
              alignment: Alignment.center,
              padding: AppEdgeInsets.symmetric(
                  horizontal: AppGapSize.xxl, vertical: AppGapSize.m),
              child: LogoImage(),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
