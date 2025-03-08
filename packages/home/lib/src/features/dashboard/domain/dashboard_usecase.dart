import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kib_core/kib_core.dart';
import '../data/repository/dashboard_repository.dart';



@injectable
class DashboardUseCase{
  final DashboardRepository repository;

  const DashboardUseCase(this.repository);

}
