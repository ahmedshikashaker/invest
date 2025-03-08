import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import '../data/repository/paci_auth_repository.dart';



@injectable
class InitPaciUseCase{
  final PaciAuthRepository _repository;

  const InitPaciUseCase(this._repository);

  Future<Either<AppExceptions,void>> call() async {
    return await _repository.initPaci();
  }

}
