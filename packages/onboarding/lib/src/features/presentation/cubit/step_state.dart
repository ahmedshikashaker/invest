part of 'step_cubit.dart';

@freezed
class StepState with _$StepState {
  const factory StepState.initial() = _Initial;
  const factory StepState.loaded({PageRouteInfo? navigationTree}) = _Loaded;

  const factory StepState.error(AppExceptions error, Function callback) =
  _Error;

  const factory StepState.businessError(AppExceptions error) = _BusinessError;

  const factory StepState.loading() = _Loading;

  const factory StepState.success(Step Login) = _Success;
}
