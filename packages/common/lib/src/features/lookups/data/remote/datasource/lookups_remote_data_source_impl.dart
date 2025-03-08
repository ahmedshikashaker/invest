import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:invest_common/src/models/api_response.dart';
import 'package:common_dependencies/common_dependencies.dart';

import '../service/lookups_service.dart';
import 'lookups_remote_data_source.dart';

@Injectable(as: LookupsRemoteDataSource)
class LookupsRemoteDataSourceImpl implements LookupsRemoteDataSource {
  final LookupsService _service;

  LookupsRemoteDataSourceImpl(this._service);

  @override
  Future<APIResponse<LookupsResponseModel?>> getTransferReasons() async =>
      await _service.getTransferReasons();
}
