//@GeneratedMicroModule;NotificationPackageModule;package:notification/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:common_dependencies/common_dependencies.dart' as _i690;
import 'package:injectable/injectable.dart' as _i526;
import 'package:notification/src/features/data/remote/services/notification_service.dart'
    as _i837;
import 'package:notification/src/features/data/remote/source/notification_remote_data_source.dart'
    as _i473;
import 'package:notification/src/features/data/remote/source/notification_remote_data_source_impl.dart'
    as _i133;
import 'package:notification/src/features/data/repository/notification_repository.dart'
    as _i115;
import 'package:notification/src/features/data/repository/notification_repository_impl.dart'
    as _i409;
import 'package:notification/src/features/domain/notification_status_usecase.dart'
    as _i1036;
import 'package:notification/src/features/domain/notification_usecase.dart'
    as _i556;
import 'package:notification/src/features/presentation/notifications_list/cubit/notification_cubit.dart'
    as _i31;

class NotificationPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i837.NotificationService>(
        () => _i837.NotificationService(gh<_i690.Dio>()));
    gh.factory<_i473.NotificationRemoteDataSource>(() =>
        _i133.NotificationRemoteDataSourceImpl(
            gh<_i837.NotificationService>()));
    gh.factory<_i115.NotificationRepository>(() =>
        _i409.NotificationRepositoryImpl(
            gh<_i473.NotificationRemoteDataSource>()));
    gh.factory<_i1036.NotificationStatusUseCase>(() =>
        _i1036.NotificationStatusUseCase(gh<_i115.NotificationRepository>()));
    gh.factory<_i556.NotificationUseCase>(
        () => _i556.NotificationUseCase(gh<_i115.NotificationRepository>()));
    gh.factory<_i31.NotificationCubit>(() => _i31.NotificationCubit(
          gh<_i556.NotificationUseCase>(),
          gh<_i1036.NotificationStatusUseCase>(),
        ));
  }
}
