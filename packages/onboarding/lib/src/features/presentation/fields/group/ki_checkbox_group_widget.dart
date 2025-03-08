import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/fields/options/options_field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

class KiGroupCheckboxWidget extends StatelessWidget {
  final CheckBoxGroupField field;

  const KiGroupCheckboxWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<({dynamic answer, String? error})>(
        valueListenable: cubit.selectFieldState(field.id),
        builder: (context, value, child) {
          return DynamicHeightGridView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: field.options?.length ?? 0,
            builder: (context, index) {
              bool isChecked = value.answer != null &&
                  (value.answer as List).contains(field.options?[index].value);
              return KISelectableCard.checkbox(
                verticalGapForBottomWidgetValue: AppGapSize.none,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.captionMedium(
                      field.options?[index].label ?? "-",
                      color: isChecked
                          ? context.colors.actionableSecondary
                          : context.colors.kiTextBodyPrimary,
                    ),
                    field.options?[index].description != null
                        ? AppText.smallRegular(
                            field.options?[index].description ?? "-",
                            color: context.colors.kiTextBodySecondary,
                          )
                        : AppContainer(),
                  ],
                ),
                onToggle: (isSelected) {
                  List answers = [...(value.answer ?? [])];
                  // adds the new checked answer to the list of answers
                  if (isSelected) {
                    answers..add(field.options?[index].value);
                  } else {
                    answers..remove(field.options?[index].value);
                  }
                  cubit.updateAnswer(field.id, answers);
                },
                isChecked: isChecked,
                bottomWidget: OptionFields(
                    fields: field.options?[index].fields,
                    parentFieldID: field.id,
                    optionID: field.options?[index].value),
              );
            },
            crossAxisSpacing: AppGapSize.m,
            crossAxisCount: field.numberOfColumns,
            mainAxisSpacing: AppGapSize.m,
          );
        });
  }
}
