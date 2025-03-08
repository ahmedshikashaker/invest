import 'package:auto_route/auto_route.dart';
import 'package:subscription/src/config/router/subscription_module_routers.gm.dart';
import 'package:flutter/foundation.dart';

@AutoRouterConfig.module()
class SubscriptionModuleRoutes extends $SubscriptionModuleRoutes {
  List<AutoRoute> get routes => kIsWeb ? webRoutes : mobileRoutes;

  List<AutoRoute> get mobileRoutes => [];

  List<AutoRoute> get webRoutes => [];
}
