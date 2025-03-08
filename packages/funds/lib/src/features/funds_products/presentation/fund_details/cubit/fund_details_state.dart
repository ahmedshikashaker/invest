import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:kib_core/kib_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'fund_details_state.freezed.dart';

@freezed
abstract class FundDetailsState
    with _$FundDetailsState{

  const factory FundDetailsState.initial() = _Initial;
  const factory FundDetailsState.loading() = _Loading;
  const factory FundDetailsState.error(AppExceptions error) = _Error;
  const factory FundDetailsState.detailsLoaded() = _detailsLoaded;
}
