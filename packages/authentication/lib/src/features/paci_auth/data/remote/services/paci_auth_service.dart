import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:invest_common/common.dart';

import '../../../../../config/end_points/authentication_end_points.dart';

part 'paci_auth_service.g.dart';

@RestApi()
@injectable
abstract class PaciAuthService {
  @factoryMethod
  factory PaciAuthService(Dio dio) = _PaciAuthService;

  @POST(AuthenticationEndpoints.initPaciPath)
  Future<void> initPaci();

  @GET(AuthenticationEndpoints.getPaciInfoPath)
  Future<APIResponse<PaciInfoModel>?> getPaciInfo();
}
