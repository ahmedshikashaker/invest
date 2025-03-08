import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';



abstract class PaciAuthRepository {

  Future<Either<AppExceptions,void>> initPaci();

  Future<Either<AppExceptions,APIResponse<PaciInfoModel>?>> getPaciInfo();

}
