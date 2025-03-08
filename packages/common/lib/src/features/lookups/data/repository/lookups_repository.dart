import 'package:invest_common/src/features/lookups/data/models/lookup_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:kib_core/kib_core.dart';

abstract class LookupsRepository {
  Future<Either<AppExceptions, LookupsResponseModel>> getTransferReasons();
}
