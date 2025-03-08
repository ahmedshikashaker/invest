import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:onboarding/src/features/presentation/sections/cubit/section_cubit.dart';
import 'package:common_dependencies/common_dependencies.dart';

import '../../../data/models/lookup_item.dart';

class KiDropdownWidget extends StatelessWidget {
  final DropdownField field;

  const KiDropdownWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SectionCubit>();
    final List<DropdownItem<LookupItem>> items = List.generate(
        field.options!.length,
        (index) => DropdownItem(
            value: field.options![index], label: field.options![index].label));

    return ValueListenableBuilder<({dynamic answer, String? error})>(
        valueListenable: cubit.selectFieldState(field.id),
        builder: (context, value, child) {
          return AppDropdown.drawer(
            hint:  field.placeholder,
            label: field.placeholder,
            items: (_) => items,
            value: cubit.getValue(field, value.answer),
            onChange: (LookupItem itemSelected, int index) {
              cubit.updateAnswer(field.id, itemSelected.value);
            },
          );
        });
  }
}
