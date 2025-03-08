import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

class AddAnotherButton extends StatelessWidget {
  final RepeaterGroupField field;

  const AddAnotherButton({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    return AppButton.tetriary(
      title: field.addButtonLabel,
      onTap: () {
        cubit.addEntryToRepeaterGroup(field);
      },
    );
  }
}
