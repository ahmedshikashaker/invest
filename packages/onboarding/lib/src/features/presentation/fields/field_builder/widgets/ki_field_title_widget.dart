import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/features/presentation/fields/field_builder/theme/ki_field_title_theme.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';

class KiFieldTitleWidget extends StatelessWidget {
  final String? title;

  const KiFieldTitleWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    final theme = context.kiFieldTitleTheme;
    final effectiveProperties = theme.properties;
    return Visibility(
      visible: title != null,
      child: Column(
        children: [
          AppText(
            title ?? '',
            style: effectiveProperties.titleTextStyle,
          ),
          AppGap(effectiveProperties.titleSpacing),
        ],
      ),
    );
  }
}
