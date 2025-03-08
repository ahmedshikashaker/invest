import 'package:built_value/built_value.dart';
import 'package:meta/meta.dart';
import 'package:kib_core/kib_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'funds_list_state.freezed.dart';

@freezed
abstract class FundsListState
    with _$FundsListState{

  const factory FundsListState.initial() = _Initial;
  const factory FundsListState.loading() = _Loading;
  const factory FundsListState.loadMore() = _LoadMore;
  const factory FundsListState.fundsListLoaded() = _FundsListLoaded;
  const factory FundsListState.error(AppExceptions error) = _Error;
}
