import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'landing_page_state.freezed.dart';

@freezed
abstract class LandingPageState with _$LandingPageState {
  const factory LandingPageState.initial() = _Initial;
  const factory LandingPageState.pageChanged() = _pageChanged;
}
