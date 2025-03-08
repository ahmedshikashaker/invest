// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:funds/src/features/funds_products/presentation/fund_details/screens/fund_details_screen.dart'
    as _i1;
import 'package:funds/src/features/funds_products/presentation/funds_list/screens/funds_list_screen.dart'
    as _i2;
import 'package:kib_design_system/kib_design_system.dart' as _i4;

abstract class $FundsModuleRoutes extends _i3.AutoRouterModule {
  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    FundDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<FundDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.FundDetailsScreen(
          key: args.key,
          fundId: args.fundId,
        ),
      );
    },
    FundsListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FundsListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.FundDetailsScreen]
class FundDetailsRoute extends _i3.PageRouteInfo<FundDetailsRouteArgs> {
  FundDetailsRoute({
    _i4.Key? key,
    required String fundId,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          FundDetailsRoute.name,
          args: FundDetailsRouteArgs(
            key: key,
            fundId: fundId,
          ),
          initialChildren: children,
        );

  static const String name = 'FundDetailsRoute';

  static const _i3.PageInfo<FundDetailsRouteArgs> page =
      _i3.PageInfo<FundDetailsRouteArgs>(name);
}

class FundDetailsRouteArgs {
  const FundDetailsRouteArgs({
    this.key,
    required this.fundId,
  });

  final _i4.Key? key;

  final String fundId;

  @override
  String toString() {
    return 'FundDetailsRouteArgs{key: $key, fundId: $fundId}';
  }
}

/// generated route for
/// [_i2.FundsListScreen]
class FundsListRoute extends _i3.PageRouteInfo<void> {
  const FundsListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          FundsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'FundsListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
