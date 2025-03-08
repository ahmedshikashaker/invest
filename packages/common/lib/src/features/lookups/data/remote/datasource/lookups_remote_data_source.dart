import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:invest_common/src/models/api_response.dart';

abstract class LookupsRemoteDataSource {
  Future<APIResponse<LookupsResponseModel>> getTransferReasons();
}
