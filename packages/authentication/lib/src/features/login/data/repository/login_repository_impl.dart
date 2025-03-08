import 'dart:convert';

import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_authentication/kib_authentication.dart';
import 'package:kib_core/kib_core.dart';

import '../models/login_request.dart';
import '../models/login_response.dart';
import '../remote/sources/login_remote_data_source.dart';
import 'login_repository.dart';

@Injectable(as: LoginRepository)
class LoginRepositoryImpl extends LoginRepository {
  final LoginRemoteDataSource _remoteDataSource;

  LoginRepositoryImpl(
    this._remoteDataSource,
  );

  @override
  Future<Either<AppExceptions, LoginResponseModel>> login({
    required LoginRequest loginRequest,
  }) async {
    try {
      final result = await _remoteDataSource.login(loginRequest: loginRequest);

      final deviceId = await getIt<DeviceInfo>().getDeviceName();

      await SecuredStorageHandler.fromGlobalKey(
        storedKey: GlobalSecuredStorageKeys.token,
      ).write(
        result.data.accessToken ?? '',
      );

      if (result.data.refreshToken != null) {
        await SecuredStorageHandler.fromGlobalKey(
          storedKey: GlobalSecuredStorageKeys.refreshToken,
        ).write(
          result.data.refreshToken!,
        );
      }

      return right(result.data);
    } on Exception catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
