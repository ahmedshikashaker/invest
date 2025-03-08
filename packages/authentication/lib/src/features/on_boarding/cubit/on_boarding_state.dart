import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'on_boarding_state.freezed.dart';

@freezed
abstract class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;


   const factory OnBoardingState.pageChanged(int page) = _pageChanged;
}
