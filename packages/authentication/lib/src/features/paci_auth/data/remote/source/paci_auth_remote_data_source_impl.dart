import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:authentication/src/features/paci_auth/data/remote/services/paci_auth_service.dart';
import 'package:injectable/injectable.dart';
import 'package:invest_common/src/models/api_response.dart';
import 'package:dio/dio.dart';
import 'paci_auth_remote_data_source.dart';
import 'package:kib_core/kib_core.dart';

@Injectable(as: PaciAuthRemoteDataSource)
class PaciAuthRemoteDataSourceImpl implements PaciAuthRemoteDataSource {
  final PaciAuthService _service;

  const PaciAuthRemoteDataSourceImpl(this._service);

  @override
  Future<APIResponse<PaciInfoModel>?> getPaciInfo() async {
    try {
      return await _service.getPaciInfo();
    } on DioException catch (error) {
      throw AppExceptions.getDioException(error);
    } catch (e) {
      throw NetworkException.unexpectedError();
    }
  }

  @override
  Future<void> initPaci() async {
    try {
      return await _service.initPaci();
    } on DioException catch (error) {
      throw AppExceptions.getDioException(error);
    } catch (e) {
      throw NetworkException.unexpectedError();
    }
  }
}
