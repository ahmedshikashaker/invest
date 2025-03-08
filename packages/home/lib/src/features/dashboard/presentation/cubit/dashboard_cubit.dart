import 'dart:async';
import 'package:kib_core/kib_core.dart';
import 'package:common_dependencies/common_dependencies.dart';
import '../../domain/dashboard_usecase.dart';
import 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  final DashboardUseCase _dashboardUseCase;
  
 DashboardCubit(this._dashboardUseCase)
      : super(const DashboardState.initial());

}
