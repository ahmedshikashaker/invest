// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication/authentication.dart' as _i6;
import 'package:common_dependencies/common_dependencies.dart' as _i690;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i447;
import 'package:funds/funds.dart' as _i425;
import 'package:get_it/get_it.dart' as _i174;
import 'package:home/home.dart' as _i1024;
import 'package:injectable/injectable.dart' as _i526;
import 'package:invest_common/common.dart' as _i107;
import 'package:kib_core/kib_core.dart' as _i415;
import 'package:kib_invest/src/config/di/ki_di_module.dart' as _i1052;
import 'package:kib_invest/src/config/file_services/ki_file_cache_http_service.dart'
    as _i858;
import 'package:kib_invest/src/config/router/app_router.dart' as _i235;
import 'package:kib_invest/src/environments/production/production_app_module.dart'
    as _i901;
import 'package:kib_invest/src/environments/production/production_environment.dart'
    as _i278;
import 'package:kib_invest/src/environments/staging/staging_app_module.dart'
    as _i944;
import 'package:kib_invest/src/environments/staging/staging_environment.dart'
    as _i457;
import 'package:notification/notification.dart' as _i137;
import 'package:onboarding/onboarding.dart' as _i706;
import 'package:settings/settings.dart' as _i133;
import 'package:subscription/subscription.dart' as _i918;

const String _prod = 'prod';
const String _dev = 'dev';

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i6.AuthenticationPackageModule().init(gh);
    await _i107.InvestCommonPackageModule().init(gh);
    await _i425.FundsPackageModule().init(gh);
    await _i706.OnboardingPackageModule().init(gh);
    await _i918.SubscriptionPackageModule().init(gh);
    await _i133.SettingsPackageModule().init(gh);
    await _i137.NotificationPackageModule().init(gh);
    await _i1024.HomePackageModule().init(gh);
    final productionAppModule = _$ProductionAppModule();
    final stagingAppModule = _$StagingAppModule();
    final kiDiModule = _$KiDiModule();
    gh.singleton<_i235.AppRouter>(() => _i235.AppRouter());
    gh.lazySingleton<_i457.StagingEnvironment>(
        () => _i457.StagingEnvironment());
    gh.lazySingleton<_i278.ProductionEnvironment>(
        () => _i278.ProductionEnvironment());
    gh.factory<bool>(
      () => productionAppModule
          .skipAppCheckFlagStatus(gh<_i278.ProductionEnvironment>()),
      instanceName: 'skipAppCheckStatus',
      registerFor: {_prod},
    );
    gh.lazySingleton<String>(
      () => stagingAppModule.getPublicKey(),
      instanceName: 'publicKey',
      registerFor: {_dev},
    );
    gh.lazySingleton<_i415.RxStorage<Object, dynamic>>(
      () => stagingAppModule.storage(gh<_i415.StorageAdapter>()),
      registerFor: {_dev},
    );
    gh.factory<String>(
      () => kiDiModule.onBoardingFlowId,
      instanceName: 'ONBOARDING_FLOW_ID',
    );
    gh.lazySingleton<String>(
      () => productionAppModule
          .getHMACEncryptionKey(gh<_i278.ProductionEnvironment>()),
      instanceName: 'HMAC_ENCRYPTION_KEY',
      registerFor: {_prod},
    );
    gh.lazySingleton<String>(
      () => stagingAppModule.getSalt(),
      instanceName: 'salt',
      registerFor: {_dev},
    );
    gh.lazySingleton<_i415.RxStorage<Object, dynamic>>(
      () => productionAppModule.storage(gh<_i415.StorageAdapter>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<String>(
      () => productionAppModule.getPublicKey(),
      instanceName: 'publicKey',
      registerFor: {_prod},
    );
    gh.lazySingleton<String>(
      () => productionAppModule.getSalt(),
      instanceName: 'salt',
      registerFor: {_prod},
    );
    gh.factory<bool>(
      () => stagingAppModule
          .skipAppCheckFlagStatus(gh<_i457.StagingEnvironment>()),
      instanceName: 'skipAppCheckStatus',
      registerFor: {_dev},
    );
    gh.lazySingleton<_i690.Dio>(
      () => stagingAppModule.dioStaging(gh<_i457.StagingEnvironment>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<String>(
      () =>
          stagingAppModule.getHMACEncryptionKey(gh<_i457.StagingEnvironment>()),
      instanceName: 'HMAC_ENCRYPTION_KEY',
      registerFor: {_dev},
    );
    gh.lazySingleton<_i690.Dio>(
      () =>
          productionAppModule.dioProduction(gh<_i278.ProductionEnvironment>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i415.AbstractRemoteFileManager>(
      () => stagingAppModule.remoteFileManager(gh<_i690.Dio>()),
      registerFor: {_dev},
    );
    gh.lazySingleton<_i858.KiFileCacheHttpService>(
        () => _i858.KiFileCacheHttpService(gh<_i690.Dio>()));
    gh.lazySingleton<_i447.CacheManager>(
      () => productionAppModule
          .fileCacheManager(gh<_i858.KiFileCacheHttpService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i415.AbstractRemoteFileManager>(
      () => productionAppModule.remoteFileManager(gh<_i690.Dio>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i447.CacheManager>(
      () =>
          stagingAppModule.fileCacheManager(gh<_i858.KiFileCacheHttpService>()),
      registerFor: {_dev},
    );
    return this;
  }
}

class _$ProductionAppModule extends _i901.ProductionAppModule {}

class _$StagingAppModule extends _i944.StagingAppModule {}

class _$KiDiModule extends _i1052.KiDiModule {}
