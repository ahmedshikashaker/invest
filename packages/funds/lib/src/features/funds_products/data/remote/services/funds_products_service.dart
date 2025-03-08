import 'package:dio/dio.dart';
import 'package:funds/src/config/end_points/funds_endpoints.dart';
import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:invest_common/common.dart';

part 'funds_products_service.g.dart';

@RestApi()
@injectable
abstract class FundsProductsService {
  @factoryMethod
  factory FundsProductsService(Dio dio) = _FundsProductsService;

  @GET(FundsEndpoints.publicFundsPath)
  Future<APIResponse<List<FundModelResponse>>?> getFundsList(
      @Query("page") int page, @Query("size") int size);

  @GET(FundsEndpoints.publicFundDetailsPath)
  Future<APIResponse<FundDetailsResponse>?> getFundDetails(
     @Path("id") String id);



}
