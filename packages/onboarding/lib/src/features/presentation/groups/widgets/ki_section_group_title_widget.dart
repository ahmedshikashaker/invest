import 'package:kib_design_system/kib_design_system.dart';
import 'package:onboarding/src/theme/onboarding_theme.dart';

class KiSectionGroupTitleWidget extends StatelessWidget {
  final String? title;
  final AppGapSize? titleSpacing;

  const KiSectionGroupTitleWidget({super.key, this.title, this.titleSpacing});

  @override
  Widget build(BuildContext context) {
    final theme = context.kiSectionGroupTheme;

    final effectiveProperties = theme.properties;
    final effectiveTitleSpacing =
        titleSpacing ?? (effectiveProperties.titleSpacing ?? AppGapSize.s);
    return Visibility(
      visible: title != null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText(
            title ?? '',
            style: effectiveProperties.titleTextStyle,
          ),
          AppGap(effectiveTitleSpacing),
        ],
      ),
    );
  }
}
