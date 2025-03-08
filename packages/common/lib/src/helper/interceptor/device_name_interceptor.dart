import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/services.dart';
import 'package:kib_core/kib_core.dart';

class DeviceNameInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    var headers = options.headers;
    String? deviceId = '';
    try {
      deviceId = await getIt<DeviceInfo>().getDeviceName();
      headers.addAll({"x-client-name": deviceId});
      options.headers = headers;
    } on PlatformException {
      deviceId = 'Failed to get deviceName.';
    }

    super.onRequest(options, handler);
  }
}
