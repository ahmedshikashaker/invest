import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:home/src/config/router/home_module_routers.gm.dart';

@AutoRouterConfig.module()
class HomeModuleRoutes extends $HomeModuleRoutes {

  static const String dashboardScreenPath = "/dashboard-screen";


  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;

  List<AutoRoute> get mobileRoutes => [AutoRoute(page: DashboardRoute.page, path: dashboardScreenPath)];

  List<AutoRoute> get webRoutes => [AutoRoute(page: DashboardRoute.page, path: dashboardScreenPath)];
}
