import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

@LazySingleton()
class StagingEnvironment {
  static const String _baseUrl = "baseUrl";
  static const String _mobileBaseUrl = "mobileBaseUrl";
  static const String _skipAppCheck = "skipAppCheck";

  String get devBaseUrl => dotenv.get(_baseUrl);

  String get devMobileBaseUrl => dotenv.get(_mobileBaseUrl);

  bool get skipAppCheck => dotenv.get(_skipAppCheck) == "true";

  String get hmacHashingKey => "I9W^Q3Gw&8bbRNPT)m2#";
}
