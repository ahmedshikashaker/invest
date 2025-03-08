import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

import '../data/repository/lookups_repository.dart';

@Injectable()
class GetTransferReasonsUseCase {
  final LookupsRepository _repository;

  const GetTransferReasonsUseCase(this._repository);

  Future<Either<AppExceptions, LookupsResponseModel>> call() async =>
      await _repository.getTransferReasons();
}
