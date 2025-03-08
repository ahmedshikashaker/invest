import 'package:dartz/dartz.dart';
import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import '../data/repository/funds_products_repository.dart';
import 'package:invest_common/common.dart';

@injectable
class GetFundDetailsUseCase{
  final FundsProductsRepository _repository;

  const GetFundDetailsUseCase(this._repository);


  Future<Either<AppExceptions, APIResponse<FundDetailsResponse>?>> call(String id) async {
    return await _repository.getFundDetails(id);
  }

}
