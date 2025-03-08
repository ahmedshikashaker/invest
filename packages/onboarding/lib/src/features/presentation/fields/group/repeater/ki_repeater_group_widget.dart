import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/fields/group/repeater/add_another_button.dart';
import 'package:onboarding/src/features/presentation/fields/group/repeater/repeater_group_item_widget.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

class KiRepeaterGroupWidget extends StatelessWidget {
  final RepeaterGroupField field;

  const KiRepeaterGroupWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (BuildContext context, ({dynamic answer, String? error}) value,
          Widget? child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: field.fieldsGroups?.length ?? 0,
              itemBuilder: (context, index) => RepeaterGroupItemWidget(
                index: index,
                fields: field.fieldsGroups?[index],
                repeaterGroupField: field,
              ),
              separatorBuilder: (BuildContext context, int index) => AppGap.m(),
            ),
            AddAnotherButton(
              field: field,
            ),
          ],
        );
      },
    );
  }
}
