import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

class ProductionBuildConfig extends BuildConfig {
  @override
  Map<String, dynamic> configs = {'env': '.env.production'};

  @override
  String get enviroment => Environment.prod;
}
