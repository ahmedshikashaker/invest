import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';

import 'package:invest_common/common.dart';

class PaciAuthBodyTopWidget extends StatelessWidget {
  const PaciAuthBodyTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      margin: AppEdgeInsets.s(),
      padding: AppEdgeInsets.s(),
      decoration: BoxDecoration(
        color: context.colors.kiLightBackground,
        borderRadius: context.radius.asBorderRadius().regular,
      ),
      child: Column(
        children: [
          AppText.captionMedium(
            context.authLocal.paciAuthRequestSentTitle,
            color: context.colors.kiTextBodySecondary,
            textAlign: TextAlign.center,
          ),
          AppGap.xl(),
          Image.asset(
            AuthModuleImages.paciMobileImgPath,
            package: "authentication",
          ),
        ],
      ),
    );
  }
}
