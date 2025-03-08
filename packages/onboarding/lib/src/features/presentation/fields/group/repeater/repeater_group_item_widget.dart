import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/fields_list_widget.dart';
import 'package:onboarding/src/features/presentation/fields/group/repeater/repeater_group_item_title_widget.dart';

class RepeaterGroupItemWidget extends StatelessWidget {
  final List<Field>? fields;
  final int index;
  final RepeaterGroupField repeaterGroupField;

  const RepeaterGroupItemWidget(
      {super.key, this.fields,required this.repeaterGroupField, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RepeaterGroupItemTitleWidget(
          field: repeaterGroupField,
          index: index,
        ),
        FieldsListWidget(fields: fields ?? [])
      ],
    );
  }
}
