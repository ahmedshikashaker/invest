import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@LazySingleton()
class ProductionEnvironment {
  static const String _productionUrl = "baseUrl";
  static const String _gwsUrl = "gwsBaseUrl";
  static const String _mobileProductionUrl = "mobileBaseUrl";
  static const String _skipAppCheck = "skipAppCheck";

  String get productionUrl => dotenv.get(_productionUrl);
  String get gwsUrl => dotenv.get(_gwsUrl);

  String get mobileProductionUrl => dotenv.get(_mobileProductionUrl);

  bool get skipAppCheck => dotenv.get(_skipAppCheck) == "true";

  String get hmacHashingKey => "I9W^Q3Gw&8bbRNPT)m2#";
}
