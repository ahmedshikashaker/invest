import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/data/models/field.dart';
import 'package:invest_common/common.dart';

class KiRadioWidget extends StatelessWidget {
  final RadioField field;

  const KiRadioWidget({super.key, required this.field});

  @override
  Widget build(BuildContext context) {
    return KIRadio(
      value: true,
      onChanged: (bool? value) {},
    );
  }
}
