import 'package:common_dependencies/common_dependencies.dart';

mixin InitiateListenerDelayMixin<State> on BlocBase<State> {
  Future get listenerDelay async => await Future.delayed(Duration.zero);
}
