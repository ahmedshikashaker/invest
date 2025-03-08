// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:notification/src/features/data/models/notification_response.dart'
    as _i5;
import 'package:notification/src/features/presentation/notifications_list/screens/notification_details_screen.dart'
    as _i1;
import 'package:notification/src/features/presentation/notifications_list/screens/notification_screen.dart'
    as _i2;

abstract class $NotificationModuleRoutes extends _i3.AutoRouterModule {
  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NotificationDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NotificationDetailsRouteArgs>();
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.NotificationDetailsScreen(
          key: args.key,
          notificationModel: args.notificationModel,
        ),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NotificationScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.NotificationDetailsScreen]
class NotificationDetailsRoute
    extends _i3.PageRouteInfo<NotificationDetailsRouteArgs> {
  NotificationDetailsRoute({
    _i4.Key? key,
    required _i5.NotificationModel notificationModel,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          NotificationDetailsRoute.name,
          args: NotificationDetailsRouteArgs(
            key: key,
            notificationModel: notificationModel,
          ),
          initialChildren: children,
        );

  static const String name = 'NotificationDetailsRoute';

  static const _i3.PageInfo<NotificationDetailsRouteArgs> page =
      _i3.PageInfo<NotificationDetailsRouteArgs>(name);
}

class NotificationDetailsRouteArgs {
  const NotificationDetailsRouteArgs({
    this.key,
    required this.notificationModel,
  });

  final _i4.Key? key;

  final _i5.NotificationModel notificationModel;

  @override
  String toString() {
    return 'NotificationDetailsRouteArgs{key: $key, notificationModel: $notificationModel}';
  }
}

/// generated route for
/// [_i2.NotificationScreen]
class NotificationRoute extends _i3.PageRouteInfo<void> {
  const NotificationRoute({List<_i3.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
