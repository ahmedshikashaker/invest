import 'package:kib_invest/src/environments/staging/staging_build_config.dart';
import 'package:kib_invest/src/environments/start_app.dart';

class StagingApp extends StartApp {
  StagingApp() : super(StagingBuildConfig());
}

Future<void> main() => StagingApp().startApp();
