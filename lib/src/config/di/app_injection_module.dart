import 'dart:async';

import 'package:invest_common/common.dart';
import 'package:funds/funds.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import 'package:authentication/authentication.dart';
import 'package:kib_invest/src/config/di/app_injection_module.config.dart';
import 'package:onboarding/onboarding.dart';
import 'package:subscription/subscription.dart';
import 'package:settings/settings.dart';
import 'package:notification/notification.dart';
import 'package:otp/src/config/otp_injection_container.dart';
import 'package:home/home.dart';

@InjectableInit(
  externalPackageModulesBefore: [
    ExternalModule(AuthenticationPackageModule),
    ExternalModule(InvestCommonPackageModule),
    ExternalModule(FundsPackageModule),
    ExternalModule(OnboardingPackageModule),
    ExternalModule(SubscriptionPackageModule),
    ExternalModule(SettingsPackageModule),
    ExternalModule(NotificationPackageModule),
    ExternalModule(HomePackageModule),
  ],
)
FutureOr<GetIt> configureDependencies(BuildConfig buildConfig) async {
  await Future.wait([
    configureCoreDependencies(getIt, environment: buildConfig.enviroment),
    getIt.init(
      environment: buildConfig.enviroment,
    )
  ]);

  configureOtpDependencies(getIt, environment: buildConfig.enviroment);

  return getIt;
}
