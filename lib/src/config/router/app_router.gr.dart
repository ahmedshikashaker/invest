// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication/authentication.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:funds/funds.dart' as _i5;
import 'package:home/home.dart' as _i10;
import 'package:kib_invest/src/features/charts_screen.dart' as _i1;
import 'package:kib_invest/src/features/temp_screen.dart' as _i2;
import 'package:notification/notification.dart' as _i9;
import 'package:onboarding/onboarding.dart' as _i6;
import 'package:settings/settings.dart' as _i8;
import 'package:subscription/subscription.dart' as _i7;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ChartsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChartsScreen(),
      );
    },
    TempRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.TempScreen(),
      );
    },
    ..._i4.AuthenticationModuleRoutes().pagesMap,
    ..._i5.FundsModuleRoutes().pagesMap,
    ..._i6.OnboardingModuleRoutes().pagesMap,
    ..._i7.SubscriptionModuleRoutes().pagesMap,
    ..._i8.SettingsModuleRoutes().pagesMap,
    ..._i9.NotificationModuleRoutes().pagesMap,
    ..._i10.HomeModuleRoutes().pagesMap,
  };
}

/// generated route for
/// [_i1.ChartsScreen]
class ChartsRoute extends _i3.PageRouteInfo<void> {
  const ChartsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          ChartsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChartsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.TempScreen]
class TempRoute extends _i3.PageRouteInfo<void> {
  const TempRoute({List<_i3.PageRouteInfo>? children})
      : super(
          TempRoute.name,
          initialChildren: children,
        );

  static const String name = 'TempRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
