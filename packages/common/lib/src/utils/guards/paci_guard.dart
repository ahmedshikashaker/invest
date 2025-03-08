import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';

class PaciGuard extends AutoRouteGuard with KIBInvestObserverMixin {
  late final Function(StackRouter router)? onUpdatePaci;

  PaciGuard({this.onUpdatePaci});

  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    final isPaciLocked =
        await getIt<GetCurrentUserLockedUseCase>().isCurrentUserPACILocked();

    if (isPaciLocked ?? false) {
      showUpdatePaci();
    } else {
      resolver.next(true);
    }
  }
}
