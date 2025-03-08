import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';
import 'package:onboarding/src/resources/images_helper.dart';
import 'package:authentication/authentication.dart';
import 'package:common_dependencies/common_dependencies.dart';

class OnboardingPaciEntryPoint extends StatelessWidget {
  const OnboardingPaciEntryPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: AppContainer(
        // height: 275.rh,
        width: double.infinity,
        padding: AppEdgeInsets.m(),
        decoration: BoxDecoration(
            color: context.colors.kiWhite,
            borderRadius: context.radius.asBorderRadius().regular,
            border: Border.all(
                width: 2, color: context.colors.actionableSecondary)),
        child: Column(
          children: [
            AppGap.m(),
            SvgGenImage(OnboardingModuleImages.paciEntryImgPath)
                .svg(package: "onboarding"),
            AppGap.xxxl(),
            AppText.smallMedium(
              context.boardingLocal.authWithPAciTitle,
              color: context.colors.kiTextBodyPrimary,
            ),
            AppGap.m(),
            AppButton.primary(
              padding: AppEdgeInsets.symmetric(
                  horizontal: AppGapSize.xxl,
                  vertical: AppGapSize.xs),
              title: context.boardingLocal.authWithPAciButton,
              onTap: () {
                context.router.push(PaciAuthRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
