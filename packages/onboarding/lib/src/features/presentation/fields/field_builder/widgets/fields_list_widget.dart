import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/field_builder_widget.dart';
import 'package:onboarding/src/features/presentation/groups/theme/ki_section_group_properties.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';

class FieldsListWidget extends StatelessWidget {
  final List<Field> fields;

  const FieldsListWidget({super.key, required this.fields});

  @override
  Widget build(BuildContext context) {
    final theme = context.kiSectionGroupTheme;
    final effectiveProperties = theme.properties;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: _buildChildrenFields(effectiveProperties),
    );
  }

  List<Widget> _buildChildrenFields(KISectionGroupProperties properties) {
    return fields
        .map((field) => AppPadding(
              padding: AppEdgeInsets.only(
                  bottom: properties.childrenSpacing ?? AppGapSize.s),
              child: FieldBuilderWidget(field: field),
            ))
        .toList();
  }
}
