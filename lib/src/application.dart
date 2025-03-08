import 'package:authentication/authentication.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart'
    hide BuildContextEasyLocalizationExtension;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:funds/funds.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_invest/src/config/extensions/typography_extension.dart';
import 'package:kib_invest/src/config/router/app_router.dart';
import 'package:kib_invest/src/l10n/gen/app_localizations.dart';
import 'package:onboarding/onboarding.dart';
import 'package:otp/otp.dart';
import 'package:subscription/subscription.dart';
import 'package:settings/settings.dart';
import 'package:notification/notification.dart';
import 'package:home/home.dart';

class KIBInvestApp extends StatefulWidget {
  const KIBInvestApp({
    Key? key,
  }) : super(key: key);

  @override
  State<KIBInvestApp> createState() => _KIBInvestAppState();
}

class _KIBInvestAppState extends State<KIBInvestApp>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Jiffy.setLocale(context.locale.languageCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    final kiGlobalConfigCubit = context.watch<KiGlobalConfigCubit>();

    final darkColorsPallet = KIAppColorsData.dark();
    final lightColorsPallet = KIAppColorsData.light();

    DeviceOrientationSettings.disableLandscapeMode();

    final data = MediaQueryData.fromView(View.of(context));
    if (data.size.shortestSide > 600) {
      // check if its bigger
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      // otherwise will be ..
      DeviceOrientationSettings.disableLandscapeMode();
    }

    if (defaultTargetPlatform == TargetPlatform.android) {
      SystemUiHelper.makeStatusBarTransparent();
    }
    KIThemeToken lightTokens =
        KIThemeToken.regular(typography: kiGlobalConfigCubit.locale.typography)
            .withColors(lightColorsPallet);
    KIThemeToken darkTokens =
        KIThemeToken.regular(typography: kiGlobalConfigCubit.locale.typography)
            .withColors(darkColorsPallet);

    return KeyboardAutoDismissWidget(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          extensions: [
            KITheme(tokens: lightTokens),
            KIOnBoardingTheme(tokens: lightTokens),
            KIAuthTheme(tokens: lightTokens),
            KIOnBoardingTheme(tokens: lightTokens)
          ],
        ),
        darkTheme: ThemeData(
          useMaterial3: false,
          extensions: [
            KITheme(
                tokens: darkTokens,
                appBarTheme: KIAppBarTheme(
                    tokens: darkTokens,
                    properties: KIAppBarProperties(
                        backgroundImagePath:
                            "assets/images/background_dark.png")),
                successfulTheme: KISuccessfulTheme(
                    tokens: darkTokens,
                    backgroundImages: KISuccessfulBackgroundImages(
                        backgroundImage: CommonImages.successDarkBackground)),
                contrastButtonTheme: KIContrastButtonTheme(
                  tokens: darkTokens,
                  colors: KIContrastButtonColors(
                    textButtonColor: darkTokens.colors.kiWhite,
                  ),
                )),
            KIAuthTheme(
              tokens: darkTokens,
              splashTheme: KISplashTheme(
                  tokens: darkTokens,
                  properties: KISplashProperties(
                    imagePath: AuthModuleImages.splashBackgroundDark,
                  )),
              landingTheme: KILandingTheme(
                  tokens: darkTokens,
                  properties: KILandingProperties(
                    imagePath: AuthModuleImages.authBackgroundDark,
                  )),
              authScaffoldTheme: KIAuthScaffoldTheme(
                  tokens: darkTokens,
                  properties: KIAuthScaffoldProperties(
                    imagePath: AuthModuleImages.authBackgroundDark,
                    titleTextStyle: AppTextStyle(
                      color: darkTokens.colors.textReversed,
                      level: AppTextLevel.sublineHeavy,
                    ),
                    subtitleTextStyle: AppTextStyle(
                      color: darkTokens.colors.textReversed,
                      level: AppTextLevel.captionRegular,
                    ),
                  )),
              onBoardingTheme: KIWelcomeOnBoardingTheme(
                tokens: darkTokens,
                properties: KIWelcomeOnBoardingProperties(
                  imagePath1: AuthModuleImages.splashBackgroundDark,
                  imagePath2: AuthModuleImages.onBoardingDark2,
                  imagePath3: AuthModuleImages.onBoardingDark3,
                ),
              ),
            ),
            KIOnBoardingTheme(tokens: darkTokens)
          ],
        ),
        routerConfig: getIt<AppRouter>().config(),
        scrollBehavior: MyCustomScrollBehavior(),
        locale: kiGlobalConfigCubit.locale,
        supportedLocales: AppLocalizations.supportedLocales,
        themeMode: kiGlobalConfigCubit.themeMode,
        // themeMode: ThemeMode.dark,
        localizationsDelegates: const [
          ...AppLocalizations.localizationsDelegates,
          ...AuthenticationLocalizations.localizationsDelegates,
          ...CommonLocalizations.localizationsDelegates,
          ...FundsLocalizations.localizationsDelegates,
          ...OnboardingLocalizations.localizationsDelegates,
          ...SubscriptionLocalizations.localizationsDelegates,
          ...SettingsLocalizations.localizationsDelegates,
          ...NotificationLocalizations.localizationsDelegates,
          ...OtpLocalizations.localizationsDelegates,
          ...HomeLocalizations.localizationsDelegates,
        ],
        builder: (BuildContext context, Widget? child) {
          final MediaQueryData data = MediaQuery.of(context);

          return AppTheme(
            data: context.tokens,
            child: MediaQuery(
              data: data.copyWith(
                textScaler: const TextScaler.linear(1.0),
              ),
              child: child!,
            ),
          );
        },
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
