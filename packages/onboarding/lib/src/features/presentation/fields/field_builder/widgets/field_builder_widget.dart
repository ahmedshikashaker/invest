import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/fields/amount/ki_amount_widget.dart';
import 'package:onboarding/src/features/presentation/fields/checkbox/ki_checkbox_widget.dart';
import 'package:onboarding/src/features/presentation/fields/conditional/ki_conditional_widget.dart';
import 'package:onboarding/src/features/presentation/fields/date_picker/ki_date_picker_widget.dart';
import 'package:onboarding/src/features/presentation/fields/dropdown/ki_dropdown_widget.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/widgets/ki_field_title_widget.dart';
import 'package:onboarding/src/features/presentation/fields/file/ki_file_widget.dart';
import 'package:onboarding/src/features/presentation/fields/group/ki_checkbox_group_widget.dart';
import 'package:onboarding/src/features/presentation/fields/group/ki_group_widget.dart';
import 'package:onboarding/src/features/presentation/fields/group/repeater/ki_repeater_group_widget.dart'
    show KiRepeaterGroupWidget;
import 'package:onboarding/src/features/presentation/fields/link/ki_link_widget.dart';
import 'package:onboarding/src/features/presentation/fields/radio/ki_radio_widget.dart';
import 'package:onboarding/src/features/presentation/fields/selection/ki_selection_widget.dart';
import 'package:onboarding/src/features/presentation/fields/signature/ki_signature_widget.dart';
import 'package:onboarding/src/features/presentation/fields/text/ki_text_widget.dart';

import '../../group/ki_radio_group_widget.dart';
import '../../hint/ki_hint_widget.dart';

class FieldBuilderWidget extends StatelessWidget {
  final Field field;

  const FieldBuilderWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [KiFieldTitleWidget(title: field.label), _buildField(field)],
    );
  }

  Widget _buildField(Field field) {
    return ConditionalWidget(
      field: field,
      child: field.map(
        text: (field) => KiTextWidget(field: field),
        amount: (field) => KiAmountWidget(field: field),
        selection: (field) => KiSelectionWidget(field: field),
        signature: (field) => KiSignatureWidget(field: field),
        file: (field) => KiFileWidget(field: field),
        link: (field) => KiLinkWidget(field: field),
        datePicker: (field) => KiDatePickerWidget(field: field),
        dropdown: (field) => KiDropdownWidget(field: field),
        checkbox: (field) => KiCheckboxWidget(field: field),
        radio: (field) => KiRadioWidget(field: field),
        group: (field) => KiGroupWidget(field: field),
        hint: (field) => KiHintWidget(field: field),
        radioGroup: (field) => KiGroupRadioWidget(field: field),
        checkBoxGroup: (field) => KiGroupCheckboxWidget(field: field),
        repeaterGroup: (field) => KiRepeaterGroupWidget(field: field),
      ),
    );
  }
}
