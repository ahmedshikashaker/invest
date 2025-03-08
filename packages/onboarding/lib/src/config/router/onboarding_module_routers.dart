import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:onboarding/src/config/router/onboarding_module_routers.gm.dart';

@AutoRouterConfig.module()
class OnboardingModuleRoutes extends $OnboardingModuleRoutes {
  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;

  List<AutoRoute> get mobileRoutes => [
        AutoRoute(page: OnboardingStepsRoute.page),
        AutoRoute(page: OnboardingUnAuthStepsRoute.page),
        AutoRoute(
          page: SectionWrapperRoute.page,
          children: [
            AutoRoute(page: KiSectionRoute.page),
          ],
        ),
      ];

  List<AutoRoute> get webRoutes => [
        AutoRoute(page: OnboardingStepsRoute.page),
        AutoRoute(page: OnboardingUnAuthStepsRoute.page),
        AutoRoute(
          page: SectionWrapperRoute.page,
          children: [
            AutoRoute(page: KiSectionRoute.page),
          ],
        ),
      ];
}
