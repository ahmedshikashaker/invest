import 'package:dartz/dartz.dart';
import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:injectable/injectable.dart';
import '../remote/source/funds_products_remote_data_source.dart';
import 'funds_products_repository.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

@Injectable(as: FundsProductsRepository)
class FundsProductsRepositoryImpl implements FundsProductsRepository {
  final FundsProductsRemoteDataSource _remoteDataSource;

  const FundsProductsRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppExceptions, APIResponse<FundDetailsResponse>?>>
      getFundDetails(String id) async {
    try {
      final remoteDataSourceResult = await _remoteDataSource.getFundDetails(id);
      return Right(remoteDataSourceResult);
    } on AppExceptions catch (exception) {
      return left(exception);
    } catch (e) {
      return left(NetworkException.unexpectedError());
    }
  }

  @override
  Future<Either<AppExceptions, APIResponse<List<FundModelResponse>>?>>
      getFundsList(int page, int size) async {
    try {
      final remoteDataSourceResult =
          await _remoteDataSource.getFundsList(page, size);
      return Right(remoteDataSourceResult);
    } on AppExceptions catch (exception) {
      return left(exception);
    } catch (e) {
      return left(NetworkException.unexpectedError());
    }
  }
}
