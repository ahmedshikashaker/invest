
import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:invest_common/common.dart';

abstract class PaciAuthRemoteDataSource {

  Future<void> initPaci();

  Future<APIResponse<PaciInfoModel>?> getPaciInfo();



}
