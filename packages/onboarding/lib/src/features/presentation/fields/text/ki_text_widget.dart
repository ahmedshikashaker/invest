import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/actions/models/action.dart';
import 'package:onboarding/src/features/data/extensions/field_action_extensions.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

/// Widget for text input fields.
class KiTextWidget extends StatelessWidget {
  final TextField field;

  const KiTextWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    final colors = context.colors;

    return ValueListenableBuilder<({dynamic answer, String? error})>(
      valueListenable: cubit.selectFieldState(field.id),
      builder: (context, value, child) {
        return AppTextField.text(
          text: value.answer,
          error: value.error != null,
          tooltip: value.error,
          tooltipIconColor: value.error == null ? null : colors.critical,
          tooltipTextColor: value.error == null ? null : colors.critical,
          onChanged: (text) => _handleTextChange(context, text),
          label: field.placeholder,
        );
      },
    );
  }

  /// Handles text changes in the field.
  void _handleTextChange(BuildContext context, String? text) {
    final cubit = context.read<SectionCubit>();

    // Update the answer in the cubit
    cubit.updateAnswer(field.id, text);

    // Handle any onChange actions
    cubit.handleFieldActions(
      field: field,
      event: ActionEvent.onChange,
      value: text,
    );
  }
}
