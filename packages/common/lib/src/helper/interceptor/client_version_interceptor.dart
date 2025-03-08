import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:kib_core/kib_core.dart';

class ClientVersionInterceptor extends QueuedInterceptorsWrapper {
  ClientVersionInterceptor();

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(_getXClientVersion());
    handler.next(options);
  }
}

Map<String, String> _getXClientVersion() {
  String platform;
  final deviceInfo = getIt<DeviceInfo>();
  if (kIsWeb) {
    platform = "WEB";
  } else if (defaultTargetPlatform == TargetPlatform.android) {
    platform = "ANDROID";
  } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    platform = "IOS";
  } else {
    platform = defaultTargetPlatform.name;
  }
  return {
    "X-Client-Version": "KIBInvest:$platform@${deviceInfo.getAppVersion()}"
  };
}
