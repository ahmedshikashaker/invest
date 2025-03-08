import 'package:auto_route/auto_route.dart';
import 'package:funds/src/config/router/funds_module_routers.gm.dart';
import 'package:flutter/foundation.dart';

@AutoRouterConfig.module()
class FundsModuleRoutes extends $FundsModuleRoutes {
  static const String fundsListScreenPath = "/funds-list-screen";
  static const String fundDetailsScreenPath = "/fund-details-screen";

  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;


  List<AutoRoute> get mobileRoutes => [
        AutoRoute(
          path: fundsListScreenPath,
          page: FundsListRoute.page,
        ),
        AutoRoute(
          path: fundDetailsScreenPath,
          page: FundDetailsRoute.page,
        ),
      ];


  List<AutoRoute> get webRoutes => [

  ];
}
