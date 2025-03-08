//@GeneratedMicroModule;InvestCommonPackageModule;package:invest_common/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:common_dependencies/common_dependencies.dart' as _i690;
import 'package:dio/dio.dart' as _i361;
import 'package:injectable/injectable.dart' as _i526;
import 'package:invest_common/src/config/global/ki_global_config_cubit.dart'
    as _i658;
import 'package:invest_common/src/features/lookups/data/remote/datasource/lookups_remote_data_source.dart'
    as _i972;
import 'package:invest_common/src/features/lookups/data/remote/datasource/lookups_remote_data_source_impl.dart'
    as _i661;
import 'package:invest_common/src/features/lookups/data/remote/service/lookups_service.dart'
    as _i956;
import 'package:invest_common/src/features/lookups/data/repository/lookups_repository.dart'
    as _i924;
import 'package:invest_common/src/features/lookups/data/repository/lookups_repository_impl.dart'
    as _i899;
import 'package:invest_common/src/features/lookups/domain/get_transfer_reasons_usecase.dart'
    as _i898;
import 'package:invest_common/src/features/otp/data/remote/service/otp_service.dart'
    as _i840;
import 'package:invest_common/src/features/otp/data/remote/source/otp_remote_data_source.dart'
    as _i291;
import 'package:invest_common/src/features/otp/data/remote/source/otp_remote_data_source_impl.dart'
    as _i642;
import 'package:invest_common/src/features/otp/data/repository/otp_repository.dart'
    as _i904;
import 'package:invest_common/src/features/otp/data/repository/otp_repository_impl.dart'
    as _i393;
import 'package:invest_common/src/features/otp/domain/request_otp_use_case.dart'
    as _i968;
import 'package:invest_common/src/features/paci_status/data/repository/check_current_user_locked_repository.dart'
    as _i62;
import 'package:invest_common/src/features/paci_status/data/repository/check_current_user_locked_repository_imp.dart'
    as _i79;
import 'package:invest_common/src/features/paci_status/domain/current_user_locked_use_case.dart'
    as _i31;
import 'package:invest_common/src/features/register_device_token/data/remote/services/user_service.dart'
    as _i463;
import 'package:invest_common/src/features/register_device_token/data/remote/source/user_device_token_data_source.dart'
    as _i245;
import 'package:invest_common/src/features/register_device_token/data/remote/source/user_device_token_data_source_impl.dart'
    as _i767;
import 'package:invest_common/src/features/register_device_token/data/repository/user_device_token_repo.dart'
    as _i4;
import 'package:invest_common/src/features/register_device_token/data/repository/user_device_token_repo_impl.dart'
    as _i957;
import 'package:invest_common/src/features/register_device_token/domain/user_device_token_usecase.dart'
    as _i221;
import 'package:invest_common/src/helper/web_content_urls.dart' as _i319;
import 'package:kib_core/kib_core.dart' as _i415;

class InvestCommonPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i319.StaticWebContentURLResolver>(
        () => _i319.StaticWebContentURLResolver(gh<_i415.FirebaseConfig>()));
    gh.factory<_i463.UserService>(() => _i463.UserService(gh<_i690.Dio>()));
    gh.factory<_i956.LookupsService>(
        () => _i956.LookupsService(gh<_i690.Dio>()));
    gh.factory<_i840.OtpService>(() => _i840.OtpService(gh<_i361.Dio>()));
    gh.factory<_i972.LookupsRemoteDataSource>(
        () => _i661.LookupsRemoteDataSourceImpl(gh<_i956.LookupsService>()));
    gh.factory<_i291.OTPRemoteDataSource>(
        () => _i642.OTPRemoteDataSourceImpl(gh<_i840.OtpService>()));
    gh.factory<_i62.CheckCurrentUserLockedRepository>(() =>
        _i79.CheckCurrentUserLockedRepositoryImp(
            gh<_i415.RxStorage<Object, dynamic>>()));
    gh.factory<_i245.UserDeviceTokenDataSource>(
        () => _i767.UserDeviceTokenDataSourceImpl(gh<_i463.UserService>()));
    gh.lazySingleton<_i658.KiGlobalConfigCubit>(
        () => _i658.KiGlobalConfigCubit(gh<_i690.SharedPreferences>()));
    gh.factory<_i924.LookupsRepository>(
        () => _i899.LookupsRepositoryImpl(gh<_i972.LookupsRemoteDataSource>()));
    gh.factory<_i898.GetTransferReasonsUseCase>(
        () => _i898.GetTransferReasonsUseCase(gh<_i924.LookupsRepository>()));
    gh.factory<_i904.OTPRepository>(
        () => _i393.OTPRepositoryImpl(gh<_i291.OTPRemoteDataSource>()));
    gh.factory<_i31.GetCurrentUserLockedUseCase>(() =>
        _i31.GetCurrentUserLockedUseCase(
            gh<_i62.CheckCurrentUserLockedRepository>()));
    gh.factory<_i4.UserDeviceTokenRepository>(() =>
        _i957.UserDeviceTokenRepositoryImpl(
            gh<_i245.UserDeviceTokenDataSource>()));
    gh.factory<_i968.RequestOTPUseCase>(
        () => _i968.RequestOTPUseCase(gh<_i904.OTPRepository>()));
    gh.factory<_i221.UserDeviceTokenUseCase>(() =>
        _i221.UserDeviceTokenUseCase(gh<_i4.UserDeviceTokenRepository>()));
  }
}
