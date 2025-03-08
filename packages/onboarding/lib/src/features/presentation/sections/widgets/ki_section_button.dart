import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:onboarding/src/l10n/extension/boarding_local.dart';

class KiSectionButton extends StatelessWidget {
  final PageRouteInfo? nextRoute;

  const KiSectionButton({super.key, this.nextRoute});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();

    return AppPadding(
      padding: AppEdgeInsets.only(bottom: AppGapSize.s),
      child: AppButton.primary(
        mainAxisSize: MainAxisSize.max,
        title: (nextRoute != null)
            ? context.boardingLocal.continueWord
            : context.boardingLocal.continueToTheNextStep,
        onTap: () {
          print(cubit.getCurrentSectionAnswers());
          cubit.enableValidation();
          if (cubit.isValidSection) {
            if (nextRoute != null)
              context.router.push(nextRoute!);
            else
              context.router.root.popUntilRoot();
          }
        },
      ),
    );
  }
}
