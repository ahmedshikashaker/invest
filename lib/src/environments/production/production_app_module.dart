import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_cache_manager/src/storage/file_system/file_system_io.dart';
import 'package:kib_core/kib_core.dart';
import 'package:http_certificate_pinning/http_certificate_pinning.dart';
import 'package:kib_invest/src/config/file_services/ki_file_cache_http_service.dart';
import 'package:kib_invest/src/environments/production/production_environment.dart';
import 'package:authentication/authentication.dart';

@Environment(Environment.prod)
@module
abstract class ProductionAppModule {
  @LazySingleton(env: [Environment.prod])
  Dio dioProduction(ProductionEnvironment productionEnvironment) {
    bool isLocalEnvOrMobile = (kDebugMode && kIsWeb) || (!kIsWeb);

    final dio = Dio(BaseOptions(
      baseUrl: isLocalEnvOrMobile
          ? productionEnvironment.mobileProductionUrl
          : productionEnvironment.productionUrl,
    ));

    dio.interceptors
        .add(AddAppCheckInterceptor(appCheckTokenCallback: () async {
      final bool skipAppCheckStatus =
          getIt<bool>(instanceName: 'skipAppCheckStatus');
      if (!skipAppCheckStatus) {
        return (await getAppCheckToken()) ?? '';
      } else {
        return "";
      }
    }));
    dio.interceptors.add(RemoveNullRequestValuesInterceptor());
    dio.interceptors.add(EncryptPOSTBodyInterceptor(
        encryptionKey: productionEnvironment.hmacHashingKey));

    dio.interceptors.add(SkipAppCheckInterceptor());
    dio.interceptors.add(DeviceIdInterceptor());
    dio.interceptors.add(TrackIdleSessionInterceptor());
    dio.interceptors.add(DeviceChannelInterceptor());
    dio.interceptors.add(KiTokenLanguageInterceptor());

    if (!kIsWeb) {
      dio.interceptors.add(RealTimeEnvironmentChangeInterceptor(
          testingBaseUrl: productionEnvironment.gwsUrl,
          callback: () async {
            final packageInfo = getIt<PackageInfo>();
            final firebaseConfig = getIt<FirebaseConfig>();
            final currentAppVersion = packageInfo.version;
            final inReviewVersion =
                firebaseConfig.loadStringBy(key: 'IN_STORE_REVIEW_VERSION');
            final inStoreReview = currentAppVersion == inReviewVersion;
            final hasSSLInterceptor = dio.interceptors
                .whereType<CertificatePinningInterceptor>()
                .isNotEmpty;
            if (!inStoreReview && !hasSSLInterceptor) {
              dio.interceptors.add(getEnvironmentSSLPinningInterceptor(
                  SSlEnvironmentKey.SSL_PROD_KEY));
            }
            return inStoreReview;
          }));
    }
    dio.interceptors.add(InterceptorsWrapper(onError: ((e, handler) async {
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
    })));
    return dio;
  }

  @LazySingleton(env: [Environment.prod])
  AbstractRemoteFileManager remoteFileManager(Dio dio) {
    return DioClientFileManager(dio);
  }

  @Named("salt")
  @LazySingleton(env: [Environment.prod])
  String getSalt() {
    return "realEstateSalt";
  }

  @Named("publicKey")
  @LazySingleton(env: [Environment.prod])
  String getPublicKey() {
    return "S1(awhgF@dORk^mAp";
  }

  @LazySingleton()
  @Environment(Environment.prod)
  RxStorage storage(StorageAdapter adapter) {
    return RxStorage<String, void>(adapter);
  }

  @Named("skipAppCheckStatus")
  @Environment(Environment.prod)
  bool skipAppCheckFlagStatus(ProductionEnvironment environment) =>
      environment.skipAppCheck;

  @Named("HMAC_ENCRYPTION_KEY")
  @LazySingleton(env: [Environment.prod])
  String getHMACEncryptionKey(ProductionEnvironment environment) {
    return environment.hmacHashingKey;
  }

  @LazySingleton(env: [Environment.prod])
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
