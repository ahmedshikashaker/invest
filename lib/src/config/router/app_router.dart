import 'package:authentication/authentication.dart';
import 'package:funds/funds.dart';
import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_invest/src/config/router/app_router.gr.dart';
import 'package:onboarding/onboarding.dart';
import 'package:subscription/subscription.dart';
import 'package:settings/settings.dart';
import 'package:notification/notification.dart';
import 'package:home/home.dart';

@singleton
@AutoRouterConfig(modules: [
  AuthenticationModuleRoutes,
  FundsModuleRoutes,
  OnboardingModuleRoutes,
  SubscriptionModuleRoutes,
  SettingsModuleRoutes,
  NotificationModuleRoutes,
  HomeModuleRoutes
])
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;

  List<AutoRoute> get mobileRoutes => [
        AutoRoute(page: TempRoute.page),
        AutoRoute(page: ChartsRoute.page),
        AutoRoute(page: OnboardingStepsRoute.page),
        AutoRoute(
            page: SectionWrapperRoute.page,
            children: [AutoRoute(page: KiSectionRoute.page)]),
        ...OnboardingModuleRoutes().routes,
        ...AuthenticationModuleRoutes().routes,
        ...FundsModuleRoutes().routes,
        ...SubscriptionModuleRoutes().routes,
        ...HomeModuleRoutes().routes,
      ];

  List<AutoRoute> get webRoutes => [
        AutoRoute(page: TempRoute.page),
        AutoRoute(page: ChartsRoute.page),
      ];
}
