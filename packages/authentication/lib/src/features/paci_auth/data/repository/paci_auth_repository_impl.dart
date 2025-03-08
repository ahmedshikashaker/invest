import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:invest_common/src/models/api_response.dart';
import '../remote/source/paci_auth_remote_data_source.dart';
import 'paci_auth_repository.dart';
import 'package:kib_core/kib_core.dart';


@Injectable(as: PaciAuthRepository)
class PaciAuthRepositoryImpl implements PaciAuthRepository {
  final PaciAuthRemoteDataSource _remoteDataSource;

  const PaciAuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<
      Either<AppExceptions, APIResponse<PaciInfoModel>?>> getPaciInfo() async {
    try {
      final remoteDataSourceResult = await _remoteDataSource.getPaciInfo();
      return Right(remoteDataSourceResult);
    } on AppExceptions catch (exception) {
      return left(exception);
    } catch (e) {
      return left(NetworkException.unexpectedError());
    }
  }

  @override
  Future<Either<AppExceptions, void>> initPaci() async {
    try {
      final remoteDataSourceResult = await _remoteDataSource.initPaci();
      return Right(remoteDataSourceResult);
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
