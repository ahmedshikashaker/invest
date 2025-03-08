import 'package:authentication/authentication.dart';
import 'package:kib_design_system/theme/data/data.dart';
import 'package:flutter/material.dart';


extension KIAuthThemeExtension on BuildContext {
  KIAuthTheme get _theme => Theme.of(this).extension<KIAuthTheme>()!;

  KISplashTheme get splashTheme => _theme.splashTheme;

  KILandingTheme get landingTheme => _theme.landingTheme;

  KIWelcomeOnBoardingTheme get onBoardingTheme => _theme.onBoardingTheme;

  KIAuthScaffoldTheme get authScaffoldTheme => _theme.authScaffoldTheme;
  KILoginTheme get loginTheme => _theme.loginTheme;

}

class KIAuthTheme extends ThemeExtension<KIAuthTheme> {
  AppThemeData tokens;
  KISplashTheme splashTheme;
  KILandingTheme landingTheme;
  KIWelcomeOnBoardingTheme onBoardingTheme;
  KILoginTheme loginTheme;
  KIAuthScaffoldTheme authScaffoldTheme;

  KIAuthTheme({
    required this.tokens,
    KISplashTheme? splashTheme,
    KILandingTheme? landingTheme,
    KIWelcomeOnBoardingTheme? onBoardingTheme,
    KILoginTheme? loginTheme,
    KIAuthScaffoldTheme? authScaffoldTheme,
  })  : splashTheme = splashTheme ?? KISplashTheme(tokens: tokens),
        landingTheme = landingTheme ?? KILandingTheme(tokens: tokens),
        onBoardingTheme = onBoardingTheme ?? KIWelcomeOnBoardingTheme(tokens: tokens),
        loginTheme = loginTheme ?? KILoginTheme(tokens: tokens),
      authScaffoldTheme =
            authScaffoldTheme ?? KIAuthScaffoldTheme(tokens: tokens);

  @override
  KIAuthTheme copyWith({
    AppThemeData? tokens,
    KISplashTheme? splashTheme,
    KILandingTheme? landingTheme,
    KIWelcomeOnBoardingTheme? onBoardingTheme,
    KILoginTheme? loginTheme,
    KIAuthScaffoldTheme? authScaffoldTheme,
  }) {
    return KIAuthTheme(
      tokens: tokens ?? this.tokens,
      splashTheme: splashTheme ?? this.splashTheme,
      landingTheme: landingTheme ?? this.landingTheme,
      onBoardingTheme: onBoardingTheme ?? this.onBoardingTheme,
      loginTheme: loginTheme ?? this.loginTheme,
      authScaffoldTheme: authScaffoldTheme ?? this.authScaffoldTheme,
    );
  }

  @override
  ThemeExtension<KIAuthTheme> lerp(
      covariant ThemeExtension<KIAuthTheme>? other, double t) {
    if (other is! KIAuthTheme) return this;

    return KIAuthTheme(
      tokens: other.tokens,
      splashTheme: splashTheme.lerp(other.splashTheme, t),
      landingTheme: landingTheme.lerp(other.landingTheme, t),
      onBoardingTheme: onBoardingTheme.lerp(other.onBoardingTheme, t),
      loginTheme: loginTheme.lerp(other.loginTheme, t),
      authScaffoldTheme: authScaffoldTheme.lerp(other.authScaffoldTheme, t),
    );
  }
}
