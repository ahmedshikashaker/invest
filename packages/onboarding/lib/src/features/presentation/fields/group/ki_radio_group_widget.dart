import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:invest_common/common.dart';
import 'package:onboarding/src/features/presentation/fields/options/options_field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

class KiGroupRadioWidget extends StatelessWidget {
  final RadioGroupField field;

  const KiGroupRadioWidget({super.key, required this.field});

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
              bool isSelected = field.options?[index].value == value.answer;
              return KISelectableCard.radio(
                verticalGapForBottomWidgetValue: AppGapSize.none,
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.captionMedium(
                      field.options?[index].label ?? "-",
                      color: isSelected
                          ? context.colors.actionableSecondary
                          : context.colors.textBodyPrimary,
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
                  cubit.updateAnswer(field.id, field.options?[index].value);
                },
                isSelected: isSelected,
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
