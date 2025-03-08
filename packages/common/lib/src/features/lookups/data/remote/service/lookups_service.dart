import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:invest_common/src/models/api_response.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../config/endpoints/common_endpoints.dart';

part 'lookups_service.g.dart';

@RestApi()
@injectable
abstract class LookupsService {
  @factoryMethod
  factory LookupsService(Dio dio) = _LookupsService;

  @GET(KIBInvestEndPoints.transferReasonsEndPoint)
  Future<APIResponse<LookupsResponseModel>> getTransferReasons();
}
