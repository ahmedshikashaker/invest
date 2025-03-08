import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/group.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/field_builder_widget.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/fields_list_widget.dart';
import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_properties.dart';
import 'package:onboarding/src/features/presentation/groups/widgets/ki_section_group_description_widget.dart';
import 'package:onboarding/src/features/presentation/groups/widgets/ki_section_group_title_widget.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';
import 'package:common_dependencies/common_dependencies.dart';

class KISectionGroup extends StatelessWidget {
  final Group group;

  const KISectionGroup({
    super.key,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    final theme = context.kiSectionGroupTheme;
    final effectiveColors = theme.colors;
    final effectiveProperties = theme.properties;
    final cubit = context.read<SectionCubit>();

    return ValueListenableBuilder<bool>(
      valueListenable: cubit.selectGroupHasVisibleFields(group),
      builder: (BuildContext context, bool value, Widget? child) {
        return Visibility(
          visible: value,
          child: AppContainer(
            decoration: BoxDecoration(
              color: effectiveColors.background,
              borderRadius:
              BorderRadius.circular(effectiveProperties.borderRadius ?? 0),
              border: effectiveColors.borderColor != null
                  ? Border.all(
                color: effectiveColors.borderColor!,
                width: effectiveProperties.borderWidth ?? 0,
              )
                  : null,
            ),
            padding: effectiveProperties.padding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                KiSectionGroupTitleWidget(
                  title: group.title,
                  titleSpacing: group.description != null ? AppGapSize.xxs : null,
                ),
                KiSectionGroupDescriptionWidget(
                  description: group.description,
                ),
                FieldsListWidget(fields: group.fields,),
              ],
            ),
          ),
        );
      },
    );
  }


}
