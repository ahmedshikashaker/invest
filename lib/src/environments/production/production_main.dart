import 'package:kib_invest/src/environments/production/production_build_config.dart';
import 'package:kib_invest/src/environments/start_app.dart';

class ProductionApp extends StartApp {
  ProductionApp() : super(ProductionBuildConfig());
}

Future<void> main() => ProductionApp().startApp();
