import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

class StagingBuildConfig extends BuildConfig {
  @override
  Map<String, dynamic> configs = {'env': '.env.dev'};

  @override
  String get enviroment => Environment.dev;
}
