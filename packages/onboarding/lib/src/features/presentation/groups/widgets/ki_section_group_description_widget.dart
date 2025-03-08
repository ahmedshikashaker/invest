import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';

class KiSectionGroupDescriptionWidget extends StatelessWidget {
  final String? description;

  const KiSectionGroupDescriptionWidget({super.key, this.description});

  @override
  Widget build(BuildContext context) {
    final theme = context.kiSectionGroupTheme;

    final effectiveProperties = theme.properties;
    return Visibility(
      visible: description != null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText(
            description ?? '',
            style: effectiveProperties.descriptionTextStyle,
          ),
          AppGap(effectiveProperties.descriptionSpacing ?? AppGapSize.s),
        ],
      ),
    );
  }
}
