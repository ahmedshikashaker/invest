import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:invest_common/common.dart';


abstract class FundsProductsRemoteDataSource {

  Future<APIResponse<List<FundModelResponse>>?> getFundsList(
      int page, int size);

  Future<APIResponse<FundDetailsResponse>?> getFundDetails(
       String id);


}
