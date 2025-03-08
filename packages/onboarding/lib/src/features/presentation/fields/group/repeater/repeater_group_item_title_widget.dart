import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:flutter/material.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';

class RepeaterGroupItemTitleWidget extends StatelessWidget {
  final int index;
  final RepeaterGroupField field;

  const RepeaterGroupItemTitleWidget(
      {super.key, this.index = 0, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    final colors = context.tokens.colors;
    return Visibility(
        visible: (field.fieldsGroups?.length ?? 0) > 1,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: AppText.captionMedium(
                    "${field.templateTitle ?? ''} ${index + 1}",
                    color: colors.textBodyPrimary,
                  ),
                ),
                InkWell(
                    onTap: () {
                      cubit.removeEntryToRepeaterGroup(index, field);
                    },
                    child: AppIcon(
                      icon: Assets.icons.trash,
                      color: colors.critical,
                    ))
              ],
            ),
            AppGap.xs()
          ],
        ));
  }
}
