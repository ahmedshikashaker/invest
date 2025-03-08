import 'package:dartz/dartz.dart';
import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

abstract class FundsProductsRepository {
  Future<Either<AppExceptions, APIResponse<List<FundModelResponse>>?>>
      getFundsList(
    int page,
    int size,
  );

  Future<Either<AppExceptions, APIResponse<FundDetailsResponse>?>>
      getFundDetails(
    String id,
  );
}
