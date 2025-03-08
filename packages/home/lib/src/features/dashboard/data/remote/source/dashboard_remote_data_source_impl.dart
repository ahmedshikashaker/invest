
import 'package:injectable/injectable.dart';
import '../services/dashboard_service.dart';


import 'dashboard_remote_data_source.dart';

@Injectable(as: DashboardRemoteDataSource)
class DashboardRemoteDataSourceImpl implements DashboardRemoteDataSource {
  final DashboardService _service;

  const DashboardRemoteDataSourceImpl(this._service);

}
