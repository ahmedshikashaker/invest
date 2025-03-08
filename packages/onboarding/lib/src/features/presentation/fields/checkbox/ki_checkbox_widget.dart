import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

class KiCheckboxWidget extends StatelessWidget {
  final CheckboxField field;

  const KiCheckboxWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<({dynamic answer, String? error})>(
        valueListenable: cubit.selectFieldState(field.id),
        builder: (context, value, child) {
        return Row(
          children: [
            KICheckbox(
              value: value.answer,
              inactiveColor: context.colors.kiWhite,
              onChanged: (bool value) {
                cubit.updateAnswer(field.id, value);
              },
            ),
            AppGap.xs(),
            AppText.captionRegular(
              field.placeholder ?? '',
              color: context.colors.kiTextHeading,
            ),
          ],
        );
      }
    );
  }
}
