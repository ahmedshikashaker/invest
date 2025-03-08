import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.pageChanged() = _pageChanged;
}
