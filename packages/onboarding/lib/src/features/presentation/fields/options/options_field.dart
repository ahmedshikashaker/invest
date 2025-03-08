import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/field_builder_widget.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/fields_list_widget.dart';
import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_properties.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';
import 'package:common_dependencies/common_dependencies.dart';

class OptionFields extends StatelessWidget {
  final List<Field>? fields;
  final String? optionID;
  final String? parentFieldID;

  const OptionFields(
      {super.key, this.fields, this.optionID, this.parentFieldID});

  @override
  Widget build(BuildContext context) {
    if (fields == null || (fields ?? []).isEmpty) return SizedBox();
    final cubit = context.read<SectionCubit>();
    return ValueListenableBuilder<bool>(
        valueListenable: cubit.selectOptionsHasVisibleFields(
            optionID ?? "", parentFieldID ?? ""),
        builder: (context, value, child) {
          return Visibility(
            visible: value,
            child: AppContainer(
                margin: AppEdgeInsets.only(top: AppGapSize.m),
                child: FieldsListWidget(
                  fields: fields ?? [],
                )),
          );
        });
  }
}
