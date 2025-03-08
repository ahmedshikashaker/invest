import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:authentication/src/config/router/authentication_module_routers.gm.dart';
import 'package:flutter/foundation.dart';

@AutoRouterConfig.module()
class AuthenticationModuleRoutes extends $AuthenticationModuleRoutes {
  static const String onboardingPagePath = "/onboarding";
  static const String landingPagePath = "/LandingPage";
  static const String splashPath = "/Splash";
  static const String loginPath = "/login";
  static const String forgetPasswordPath = "/forgetPassword";
  static const String resetPasswordPath = "/resetPassword";
  static const String resetPasswordSuccessPath = "/resetPasswordSuccess";


  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;

  List<AutoRoute> get mobileRoutes => [
        AutoRoute(
          page: SplashRoute.page,
          path: splashPath,
          initial: true,
        ),
        AutoRoute(
          page: OnBoardingRoute.page,
          path: onboardingPagePath,
        ),
        AutoRoute(
          page: LandingRouteRoute.page,
          path: landingPagePath,
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: loginPath,
        ),
        AutoRoute(page: RegistrationRoute.page),
        AutoRoute(page: PersonalDetailsRegistrationRoute.page),
        AutoRoute(page: RegistrationSuccessRoute.page),
        AutoRoute(page: PaciAuthRoute.page),
        AutoRoute(page: PaciAuthSuccessRoute.page),
        AutoRoute(
          page: ForgetPasswordRoute.page,
          path: forgetPasswordPath,
        ),
        AutoRoute(
          page: ResetPasswordRoute.page,
          path: resetPasswordPath,
        ),
    AutoRoute(
          page: ResetPasswordSuccessRoute.page,
          path: resetPasswordSuccessPath,
        ),
      ];

  List<AutoRoute> get webRoutes => [];
}
