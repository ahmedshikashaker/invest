import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:kib_core/kib_core.dart';
import 'package:kib_invest/src/config/file_services/ki_file_cache_http_service.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system_io.dart';
import 'package:kib_invest/src/environments/staging/staging_environment.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:authentication/authentication.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system_io.dart';

import '../../config/file_services/ki_file_cache_http_service.dart';

@Environment(Environment.dev)
@module
abstract class StagingAppModule {
  @LazySingleton(env: [Environment.dev])
  Dio dioStaging(StagingEnvironment environment) {
    bool isLocalEnvOrMobile = (kDebugMode && kIsWeb) || (!kIsWeb);
    final dio = Dio(BaseOptions(
        baseUrl: isLocalEnvOrMobile
            ? environment.devMobileBaseUrl
            : environment.devBaseUrl));

    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
      enabled: kDebugMode,
    ));

    dio.interceptors.add(
      AddAppCheckInterceptor(
        appCheckTokenCallback: () async {
          final bool skipAppCheckStatus =
              getIt<bool>(instanceName: 'skipAppCheckStatus');
          if (!skipAppCheckStatus) {
            return (await getAppCheckToken()) ?? '';
          } else {
            return "";
          }
        },
      ),
    );

    dio.interceptors.add(RemoveNullRequestValuesInterceptor());

    dio.interceptors.add(SkipAppCheckInterceptor());
    dio.interceptors.add(DeviceIdInterceptor());
    dio.interceptors.add(TrackIdleSessionInterceptor());
    dio.interceptors.add(DeviceChannelInterceptor());
    dio.interceptors.add(KiTokenLanguageInterceptor());

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: ((e, handler) async {
          if ((e.response?.statusCode == 401 &&
                  (!e.requestOptions.path.contains("login")) ||
              e.requestOptions.path.contains("logout"))) {
            return;
          }
          return handler.reject(
            DioException(
              requestOptions: e.requestOptions,
              type: DioExceptionType.badResponse,
              response: e.response,
            ),
          );
        }),
      ),
    );
    return dio;
  }

  @LazySingleton(env: [Environment.dev])
  AbstractRemoteFileManager remoteFileManager(Dio dio) {
    return DioClientFileManager(dio);
  }

  @Named("salt")
  @LazySingleton(env: [Environment.dev])
  String getSalt() {
    return "realEstateSalt";
  }

  @Named("publicKey")
  @LazySingleton(env: [Environment.dev])
  String getPublicKey() {
    return "S1(awhgF@dORk^mAp";
  }

  @LazySingleton()
  @Environment(Environment.dev)
  RxStorage storage(StorageAdapter adapter) {
    return RxStorage<String, void>(adapter);
  }

  @Named("skipAppCheckStatus")
  @Environment(Environment.dev)
  bool skipAppCheckFlagStatus(StagingEnvironment environment) =>
      environment.skipAppCheck;

  @Named("HMAC_ENCRYPTION_KEY")
  @LazySingleton(env: [Environment.dev])
  String getHMACEncryptionKey(StagingEnvironment environment) {
    return environment.hmacHashingKey;
  }

  @LazySingleton(env: [Environment.dev])
  CacheManager fileCacheManager(KiFileCacheHttpService fileService) {
    const key = 'KiCacheKey';
    return CacheManager(
      Config(
        key,
        stalePeriod: const Duration(days: 7),
        maxNrOfCacheObjects: 100,
        repo: JsonCacheInfoRepository(databaseName: key),
        fileSystem: IOFileSystem(key),
        fileService: fileService,
      ),
    );
  }
}
