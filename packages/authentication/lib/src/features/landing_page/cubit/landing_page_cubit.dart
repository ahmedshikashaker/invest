import 'package:common_dependencies/common_dependencies.dart';

import 'landing_page_state.dart';

@injectable
class LandingPageCubit extends Cubit<LandingPageState> {
  LandingPageCubit() : super(const LandingPageState.initial());


  bool login = true;
}
