import 'dart:async';
import 'dart:convert';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_authentication/kib_authentication.dart';
import 'package:kib_core/kib_core.dart';
import 'package:jwt_decode/jwt_decode.dart';

class KiTokenLanguageInterceptor extends Interceptor {
  @override
  onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Map<String, dynamic> header = {};

    header.addAll({"accept-language": await getLanguage()});
    var token = await getToken();
    if (token != null) {
      header.addAll({"Authorization": 'Bearer $token'});
    }
    options.headers.addAll(header);
    handler.next(options);
  }
}

@override
void onError(DioException err, ErrorInterceptorHandler handler) {
  handler.next(err);
}

@override
void onResponse(Response response, ResponseInterceptorHandler handler) async {
  return handler.next(response);
}

Future<String> getLanguage() async {
  try {
    return await SharedPrefsHandler.fromGlobalKey(
                storedKey: GlobalSharedPrefKeys.language)
            .resolveAsString() ??
        "en";
  } catch (e) {
    return "en";
  }
}

Future<String?> getToken() async {
  try {
    var token = await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.token)
        .resolveAsString();
    return token;
  } catch (e) {}
  return null;
}

Future<String?> getTokenIfNotExpired() async {
  try {
    final token = await getToken();
    final isExpired = Jwt.isExpired(token ?? "");
    if (isExpired) return null;
    return token;
  } catch (e) {
    return null;
  }
}

Future<String?> getRefreshToken() async {
  try {
    var loginJson = await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.token)
        .resolveAsString();
    if (loginJson != null) {
      var user = LoginResponse.fromJson(jsonDecode(loginJson));
      return user.refreshToken;
    }
  } catch (e) {}
  return null;
}
