import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ResetPasswordSuccessScreen extends StatelessWidget {
  const ResetPasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return KISuccessfulScreen(
      kibLogoWidget: InkWell(
        onTap: () => context.router.replaceAll([
          LandingRouteRoute(),
          LoginRoute(),
        ]),
        child: AppIcon(
          icon: Assets.icons.arrowBack,
          matchTextDirection: true,
          color: AppColorsData.white,
        ),
      ),
      backgroundWidget: Image.asset(
        fit: BoxFit.cover,
        context.authScaffoldTheme.properties.imagePath,
        package: AuthModuleImages.brandingAssetPackage,
      ),
      title: context.authLocal.congratulationsYouAllSet,
      description: context.authLocal.yourPasswordHasBeenUpdated,
      button: AppButton.contrast(
        mainAxisSize: MainAxisSize.max,
        title: context.authLocal.login,
        titleColor: context.contrastButtonTheme.colors.textButtonColor,
        onTap: () {
          context.router.replaceAll([
            LandingRouteRoute(),
            LoginRoute(),
          ]);
        },
      ),
    );
  }
}
