//@GeneratedMicroModule;FundsPackageModule;package:funds/src/config/di/injection_module.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:dio/dio.dart' as _i361;
import 'package:funds/src/features/funds_products/data/remote/services/funds_products_service.dart'
    as _i653;
import 'package:funds/src/features/funds_products/data/remote/source/funds_products_remote_data_source.dart'
    as _i144;
import 'package:funds/src/features/funds_products/data/remote/source/funds_products_remote_data_source_impl.dart'
    as _i363;
import 'package:funds/src/features/funds_products/data/repository/funds_products_repository.dart'
    as _i83;
import 'package:funds/src/features/funds_products/data/repository/funds_products_repository_impl.dart'
    as _i781;
import 'package:funds/src/features/funds_products/domain/get_fund_details_usecase.dart'
    as _i940;
import 'package:funds/src/features/funds_products/domain/get_funds_list_usecase.dart'
    as _i667;
import 'package:funds/src/features/funds_products/presentation/fund_details/cubit/fund_details_cubit.dart'
    as _i960;
import 'package:funds/src/features/funds_products/presentation/funds_list/cubit/funds_list_cubit.dart'
    as _i369;
import 'package:injectable/injectable.dart' as _i526;

class FundsPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i653.FundsProductsService>(
        () => _i653.FundsProductsService(gh<_i361.Dio>()));
    gh.factory<_i144.FundsProductsRemoteDataSource>(() =>
        _i363.FundsProductsRemoteDataSourceImpl(
            gh<_i653.FundsProductsService>()));
    gh.factory<_i83.FundsProductsRepository>(() =>
        _i781.FundsProductsRepositoryImpl(
            gh<_i144.FundsProductsRemoteDataSource>()));
    gh.factory<_i667.GetFundsListUseCase>(
        () => _i667.GetFundsListUseCase(gh<_i83.FundsProductsRepository>()));
    gh.factory<_i940.GetFundDetailsUseCase>(
        () => _i940.GetFundDetailsUseCase(gh<_i83.FundsProductsRepository>()));
    gh.factory<_i369.FundsListCubit>(
        () => _i369.FundsListCubit(gh<_i667.GetFundsListUseCase>()));
    gh.factory<_i960.FundDetailsCubit>(
        () => _i960.FundDetailsCubit(gh<_i940.GetFundDetailsUseCase>()));
  }
}
