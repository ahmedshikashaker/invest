import 'package:kib_core/kib_core.dart';

mixin KIBInvestObserverMixin {
  RxStorage get _rxStorage => getIt<RxStorage>();

  // ******************** PACI listener ********************

  Stream<int?> onShowUpdatePaci() =>
      _rxStorage.observe(_paciObserverKey, (o) => o as int);

  void showUpdatePaci() => _rxStorage.write(
        _paciObserverKey,
        DateTime.now().millisecond,
        (o) => o as int,
      );
}

const String _paciObserverKey = "paciObserverKey";
