import 'package:funds/src/features/funds_products/data/models/fund_details_response.dart';
import 'package:funds/src/features/funds_products/data/models/fund_model_response.dart';
import 'package:injectable/injectable.dart';
import 'package:invest_common/common.dart';
import '../services/funds_products_service.dart';
import 'package:dio/dio.dart';
import 'package:kib_core/kib_core.dart';

import 'funds_products_remote_data_source.dart';

@Injectable(as: FundsProductsRemoteDataSource)
class FundsProductsRemoteDataSourceImpl
    implements FundsProductsRemoteDataSource {
  final FundsProductsService _service;

  const FundsProductsRemoteDataSourceImpl(this._service);

  @override
  Future<APIResponse<List<FundModelResponse>>?> getFundsList(
      int page, int size) async {
    try{
      return await _service.getFundsList(page, size);
    } on DioException catch (error){
      throw AppExceptions.getDioException(error);
    } catch (e){
      throw NetworkException.unexpectedError();;
    }
  }

  @override
  Future<APIResponse<FundDetailsResponse>?> getFundDetails(String id)async {
    try{
      return await _service.getFundDetails(id);
    } on DioException catch (error){
      throw AppExceptions.getDioException(error);
    } catch (e){
      throw NetworkException.unexpectedError();;
    }
  }
}
