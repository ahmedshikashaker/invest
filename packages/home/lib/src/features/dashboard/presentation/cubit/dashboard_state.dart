import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:kib_core/kib_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState
    with _$DashboardState{

  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.error(String error) = _Error;
}
