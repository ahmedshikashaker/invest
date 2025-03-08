import 'package:authentication/src/features/paci_auth/data/models/paci_info_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import '../data/repository/paci_auth_repository.dart';
import 'package:invest_common/common.dart';



@injectable
class GetPaciInfoUseCase{
  final PaciAuthRepository repository;

  const GetPaciInfoUseCase(this.repository);

  Future<Either<AppExceptions,APIResponse<PaciInfoModel>?>> call() async {
    return await repository.getPaciInfo();
  }

}
