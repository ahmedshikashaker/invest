import 'package:common_dependencies/common_dependencies.dart';

import 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.initial());

  navigateToOnBoarding() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) => emit(SplashState.pageChanged()),
    );
  }
}
