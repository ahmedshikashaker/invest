import 'dart:async';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_invest/src/application.dart';
import 'package:kib_invest/src/config/di/app_injection_module.dart';
import 'package:kib_invest/src/url_strategy/url_strategy.dart';
import 'package:invest_common/common.dart';

abstract class StartApp {
  final BuildConfig buildConfig;

  StartApp(this.buildConfig);

  Future<void> startApp() async {
    await runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        await configureDependencies(buildConfig);
        setPathUrlStrategy();

        await dotenv.load(fileName: buildConfig.getString("env") ?? '');
        //await initAppCheck(webRecaptchaSiteKey: dotenv.get("recaptchaSiteKey"));

        runApp(
          BlocProvider(
            create: (context) => getIt<KiGlobalConfigCubit>(),
            child: const KIBInvestApp(),
          ),
        );
      },
      (error, stack) {
        print(error);
        print(stack);
        //FirebaseCrashlytics.instance.recordError(error, stack);
      },
    );
  }
}
