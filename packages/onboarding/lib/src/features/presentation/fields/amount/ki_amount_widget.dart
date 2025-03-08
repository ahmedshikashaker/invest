import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';

class KiAmountWidget extends StatelessWidget {
  final AmountField field;

  const KiAmountWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    final colors = context.colors;
    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (context, value, child) {
        return AppTextField.amount(
          text: value.answer,
          error: value.error != null,
          tooltip: value.error,
          tooltipIconColor: value.error == null ? null : colors.critical,
          tooltipTextColor: value.error == null ? null : colors.critical,
          onChanged: (text) => cubit.updateAnswer(field.id, text),
          hint: field.placeholder,
          trailingWidget: AppText.bodyRegular(
            field.suffix ?? '',
            color: colors.textBodySecondary,
          ),
        );
      },
    );
  }
}
