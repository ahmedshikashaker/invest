import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../remote/source/dashboard_remote_data_source.dart';
import 'dashboard_repository.dart';
import 'package:kib_core/kib_core.dart';


@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardRemoteDataSource remoteDataSource;

  const DashboardRepositoryImpl(this.remoteDataSource);

}
