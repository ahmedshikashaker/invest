

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'dashboard_service.g.dart';

@RestApi()
@injectable
abstract class DashboardService{

  @factoryMethod
  factory DashboardService(Dio dio) = _DashboardService;



}