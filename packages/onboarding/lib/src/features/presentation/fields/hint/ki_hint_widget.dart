import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

class KiHintWidget extends StatelessWidget {
  final HintField field;

  const KiHintWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    final colors = context.colors;
    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (context, value, child) {
        return AppContainer(
          padding: AppEdgeInsets.s(),
          decoration: BoxDecoration(
              color: colors.kiBackground,
              borderRadius: context.radius.asBorderRadius().medium),
          child: MessageWidget.info(
            message: field.placeholder,
            textColor: colors.kiTextBodyPrimary,
            icon: AppIcon(
              icon: Assets.icons.info,
              size: 16,
              color: colors.actionableSecondary,
            ),
          ),
        );
      },
    );
  }
}
