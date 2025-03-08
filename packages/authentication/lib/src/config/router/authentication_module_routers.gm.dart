// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication/src/features/forget_password/screen/forget_password/forget_password_screen.dart'
    as _i1;
import 'package:authentication/src/features/forget_password/screen/reset_password/reset_password_screen.dart'
    as _i10;
import 'package:authentication/src/features/forget_password/screen/success_screen/reset_password_success_screen.dart'
    as _i11;
import 'package:authentication/src/features/landing_page/screen/landing_page_screen.dart'
    as _i2;
import 'package:authentication/src/features/login/screen/login_screen.dart'
    as _i3;
import 'package:authentication/src/features/on_boarding/screen/on_boarding_screen.dart'
    as _i4;
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart'
    as _i15;
import 'package:authentication/src/features/paci_auth/presentation/screens/paci_auth_screen.dart'
    as _i5;
import 'package:authentication/src/features/paci_auth/presentation/screens/paci_auth_success_screen.dart'
    as _i6;
import 'package:authentication/src/features/registration/presentation/personal_details/screens/personal_details_screen.dart'
    as _i7;
import 'package:authentication/src/features/registration/presentation/registration/screens/registration_screen.dart'
    as _i8;
import 'package:authentication/src/features/registration/presentation/success/registration_success_screen.dart'
    as _i9;
import 'package:authentication/src/features/splash/screen/splash_screen.dart'
    as _i12;
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:kib_design_system/kib_design_system.dart' as _i14;

abstract class $AuthenticationModuleRoutes extends _i13.AutoRouterModule {
  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    ForgetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ForgetPasswordRouteArgs>(
          orElse: () => const ForgetPasswordRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ForgetPasswordScreen(key: args.key),
      );
    },
    LandingRouteRoute.name: (routeData) {
      final args = routeData.argsAs<LandingRouteRouteArgs>(
          orElse: () => const LandingRouteRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.LandingPageScreen(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginScreen(key: args.key),
      );
    },
    OnBoardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardingRouteArgs>(
          orElse: () => const OnBoardingRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.OnBoardingScreen(key: args.key),
      );
    },
    PaciAuthRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.PaciAuthScreen(),
      );
    },
    PaciAuthSuccessRoute.name: (routeData) {
      final args = routeData.argsAs<PaciAuthSuccessRouteArgs>(
          orElse: () => const PaciAuthSuccessRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.PaciAuthSuccessScreen(
          key: args.key,
          paciInfoModel: args.paciInfoModel,
        ),
      );
    },
    PersonalDetailsRegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<PersonalDetailsRegistrationRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.PersonalDetailsRegistrationScreen(
          key: args.key,
          actionToken: args.actionToken,
          password: args.password,
        ),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RegistrationScreen(),
      );
    },
    RegistrationSuccessRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.RegistrationSuccessScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>(
          orElse: () => const ResetPasswordRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.ResetPasswordScreen(
          key: args.key,
          actionToken: args.actionToken,
        ),
      );
    },
    ResetPasswordSuccessRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ResetPasswordSuccessScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.SplashScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.ForgetPasswordScreen]
class ForgetPasswordRoute extends _i13.PageRouteInfo<ForgetPasswordRouteArgs> {
  ForgetPasswordRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ForgetPasswordRoute.name,
          args: ForgetPasswordRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ForgetPasswordRoute';

  static const _i13.PageInfo<ForgetPasswordRouteArgs> page =
      _i13.PageInfo<ForgetPasswordRouteArgs>(name);
}

class ForgetPasswordRouteArgs {
  const ForgetPasswordRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'ForgetPasswordRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.LandingPageScreen]
class LandingRouteRoute extends _i13.PageRouteInfo<LandingRouteRouteArgs> {
  LandingRouteRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LandingRouteRoute.name,
          args: LandingRouteRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LandingRouteRoute';

  static const _i13.PageInfo<LandingRouteRouteArgs> page =
      _i13.PageInfo<LandingRouteRouteArgs>(name);
}

class LandingRouteRouteArgs {
  const LandingRouteRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LandingRouteRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<LoginRouteArgs> page =
      _i13.PageInfo<LoginRouteArgs>(name);
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OnBoardingScreen]
class OnBoardingRoute extends _i13.PageRouteInfo<OnBoardingRouteArgs> {
  OnBoardingRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          OnBoardingRoute.name,
          args: OnBoardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnBoardingRoute';

  static const _i13.PageInfo<OnBoardingRouteArgs> page =
      _i13.PageInfo<OnBoardingRouteArgs>(name);
}

class OnBoardingRouteArgs {
  const OnBoardingRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'OnBoardingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.PaciAuthScreen]
class PaciAuthRoute extends _i13.PageRouteInfo<void> {
  const PaciAuthRoute({List<_i13.PageRouteInfo>? children})
      : super(
          PaciAuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaciAuthRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PaciAuthSuccessScreen]
class PaciAuthSuccessRoute
    extends _i13.PageRouteInfo<PaciAuthSuccessRouteArgs> {
  PaciAuthSuccessRoute({
    _i14.Key? key,
    _i15.PaciInfoModel? paciInfoModel,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PaciAuthSuccessRoute.name,
          args: PaciAuthSuccessRouteArgs(
            key: key,
            paciInfoModel: paciInfoModel,
          ),
          initialChildren: children,
        );

  static const String name = 'PaciAuthSuccessRoute';

  static const _i13.PageInfo<PaciAuthSuccessRouteArgs> page =
      _i13.PageInfo<PaciAuthSuccessRouteArgs>(name);
}

class PaciAuthSuccessRouteArgs {
  const PaciAuthSuccessRouteArgs({
    this.key,
    this.paciInfoModel,
  });

  final _i14.Key? key;

  final _i15.PaciInfoModel? paciInfoModel;

  @override
  String toString() {
    return 'PaciAuthSuccessRouteArgs{key: $key, paciInfoModel: $paciInfoModel}';
  }
}

/// generated route for
/// [_i7.PersonalDetailsRegistrationScreen]
class PersonalDetailsRegistrationRoute
    extends _i13.PageRouteInfo<PersonalDetailsRegistrationRouteArgs> {
  PersonalDetailsRegistrationRoute({
    _i14.Key? key,
    required String actionToken,
    required String password,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          PersonalDetailsRegistrationRoute.name,
          args: PersonalDetailsRegistrationRouteArgs(
            key: key,
            actionToken: actionToken,
            password: password,
          ),
          initialChildren: children,
        );

  static const String name = 'PersonalDetailsRegistrationRoute';

  static const _i13.PageInfo<PersonalDetailsRegistrationRouteArgs> page =
      _i13.PageInfo<PersonalDetailsRegistrationRouteArgs>(name);
}

class PersonalDetailsRegistrationRouteArgs {
  const PersonalDetailsRegistrationRouteArgs({
    this.key,
    required this.actionToken,
    required this.password,
  });

  final _i14.Key? key;

  final String actionToken;

  final String password;

  @override
  String toString() {
    return 'PersonalDetailsRegistrationRouteArgs{key: $key, actionToken: $actionToken, password: $password}';
  }
}

/// generated route for
/// [_i8.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.RegistrationSuccessScreen]
class RegistrationSuccessRoute extends _i13.PageRouteInfo<void> {
  const RegistrationSuccessRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegistrationSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationSuccessRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ResetPasswordScreen]
class ResetPasswordRoute extends _i13.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i14.Key? key,
    String? actionToken,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
            actionToken: actionToken,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i13.PageInfo<ResetPasswordRouteArgs> page =
      _i13.PageInfo<ResetPasswordRouteArgs>(name);
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    this.actionToken,
  });

  final _i14.Key? key;

  final String? actionToken;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, actionToken: $actionToken}';
  }
}

/// generated route for
/// [_i11.ResetPasswordSuccessScreen]
class ResetPasswordSuccessRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordSuccessRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ResetPasswordSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordSuccessRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          SplashRoute.name,
          args: SplashRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<SplashRouteArgs> page =
      _i13.PageInfo<SplashRouteArgs>(name);
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i14.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}
