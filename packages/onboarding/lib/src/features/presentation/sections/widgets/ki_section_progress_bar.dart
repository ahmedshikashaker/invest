import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import '../cubit/section_cubit.dart';

class KiSectionProgressBar extends StatelessWidget {
  const KiSectionProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<SectionCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AppText.smallRegular(
              cubit.currentSection.title,
              color: context.colors.kiTextBodySecondary,
            ),
            AppGap.xxs(),
            AppText.smallBold(
              cubit.currentSection.progressBar.label,
              color: context.colors.kiTextBodyPrimary,
            ),
          ],
        ),
        AppGap.s(),
        KIProgressIndicator(
          progress: cubit.currentSection.progressBar.percentage.toDouble() / 100,
          backgroundColor: context.colors.kiWhite,
        ),
      ],
    );
  }
}
