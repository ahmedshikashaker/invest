import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../remote/datasource/lookups_remote_data_source.dart';
import 'lookups_repository.dart';

@Injectable(as: LookupsRepository)
class LookupsRepositoryImpl implements LookupsRepository {
  final LookupsRemoteDataSource _remoteDataSource;

  const LookupsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppExceptions, LookupsResponseModel?>>
      getTransferReasons() async {
    try {
      final result = await _remoteDataSource.getTransferReasons();
      return right(result.data);
    } catch (error) {
      return left(AppExceptions.getDioException(error));
    }
  }
}
