//@GeneratedMicroModule;HomePackageModule;package:home/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:home/src/features/dashboard/data/remote/services/dashboard_service.dart'
    as _i355;
import 'package:home/src/features/dashboard/data/remote/source/dashboard_remote_data_source.dart'
    as _i462;
import 'package:home/src/features/dashboard/data/remote/source/dashboard_remote_data_source_impl.dart'
    as _i802;
import 'package:home/src/features/dashboard/data/repository/dashboard_repository.dart'
    as _i1007;
import 'package:home/src/features/dashboard/data/repository/dashboard_repository_impl.dart'
    as _i595;
import 'package:home/src/features/dashboard/domain/dashboard_usecase.dart'
    as _i591;
import 'package:home/src/features/dashboard/presentation/cubit/dashboard_cubit.dart'
    as _i954;
import 'package:injectable/injectable.dart' as _i526;

class HomePackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i355.DashboardService>(
        () => _i355.DashboardService(gh<_i361.Dio>()));
    gh.factory<_i462.DashboardRemoteDataSource>(() =>
        _i802.DashboardRemoteDataSourceImpl(gh<_i355.DashboardService>()));
    gh.factory<_i1007.DashboardRepository>(() =>
        _i595.DashboardRepositoryImpl(gh<_i462.DashboardRemoteDataSource>()));
    gh.factory<_i591.DashboardUseCase>(
        () => _i591.DashboardUseCase(gh<_i1007.DashboardRepository>()));
    gh.factory<_i954.DashboardCubit>(
        () => _i954.DashboardCubit(gh<_i591.DashboardUseCase>()));
  }
}
