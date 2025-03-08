import 'package:flutter/foundation.dart';
import 'package:kib_core/kib_core.dart';

Future<void> pushAndPopUntilLoginRoute({bool isSessionTimeOut = false}) async {
  final storage = getIt<RxStorage>();
  storage.write(
      "logout_event",
      {"to": "LoginRoute", "isSessionTimeOut": isSessionTimeOut},
      (t) => t as Map<String, dynamic>);
}

Future<void> pushAndPopUntilLoginWithBiometricsRoute(
    {bool isSessionTimeOut = false}) async {
  if (kIsWeb) {
    pushAndPopUntilLoginRoute(isSessionTimeOut: isSessionTimeOut);
  } else {
    final storage = getIt<RxStorage>();
    storage.write(
        "logout_event",
        {
          "to": "LoginWithBiometricsRoute",
          "isSessionTimeOut": isSessionTimeOut
        },
        (t) => t as Map<String, dynamic>);
  }
}

Future<void> pushAndPopUntilNoBiometricsLandingPageRoute(
    {bool isSessionTimeOut = false}) async {
  if (kIsWeb) {
    pushAndPopUntilLoginRoute(isSessionTimeOut: isSessionTimeOut);
  } else {
    final storage = getIt<RxStorage>();
    storage.write(
        "logout_event",
        {
          "to": "NoBiometricsLandingPageRoute",
          "isSessionTimeOut": isSessionTimeOut
        },
        (t) => t as Map<String, dynamic>);
  }
}
