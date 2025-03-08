import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:kib_core/kib_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'paci_auth_state.freezed.dart';

@freezed
abstract class PaciAuthState
    with _$PaciAuthState{

  const factory PaciAuthState.initial() = _Initial;
  const factory PaciAuthState.loading() = _Loading;
  const factory PaciAuthState.error(AppExceptions error) = _Error;
  const factory PaciAuthState.paciInitiated() = _PaciInitiated;
  const factory PaciAuthState.paciInitiatedSuccessfully() = _PaciInitiatedSuccessfully;
  const factory PaciAuthState.paciRejected() = _PaciRejected;
  const factory PaciAuthState.paciApproved() = _PaciApproved;
  const factory PaciAuthState.timerExpired() = _TimerExpired;
  const factory PaciAuthState.timerReset() = _TimerReset;
  const factory PaciAuthState.timerUpdated(Duration remainingTime) = _TimerUpdated;

}
