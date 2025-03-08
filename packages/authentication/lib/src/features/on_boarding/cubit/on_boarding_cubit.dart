import 'package:common_dependencies/common_dependencies.dart';

import 'on_boarding_state.dart';

@injectable
class OnBoardingCubit extends Cubit<OnBoardingState> {
  int boardingIndex = 0;

  OnBoardingCubit() : super(const OnBoardingState.initial());

  onPageIndexChanged(int pageIndex) {
    boardingIndex = pageIndex;
    emit(OnBoardingState.pageChanged(pageIndex));
  }
}
