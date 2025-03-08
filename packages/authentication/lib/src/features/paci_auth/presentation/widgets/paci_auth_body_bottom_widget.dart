import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';


class PaciAuthBodyBottomWidget extends StatelessWidget {
  const PaciAuthBodyBottomWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: AppEdgeInsets.m(),
      decoration: BoxDecoration(
        color: context.colors.kiBackground,
        borderRadius: context.radius.asBorderRadius().regular,
      ),
      child: Column(
        children: [
          AppText.captionMedium(
            context.authLocal.openPaciAndAcceptTitle,
            color: context.colors.kiTextBodyPrimary,
            textAlign: TextAlign.center,
          ),
          AppGap.xs(),
          AppText.captionBold(
            context.authLocal.authPaciAndSignTitle,
            color: context.colors.actionableSecondary,
          ),
        ],
      ),
    );
  }
}
