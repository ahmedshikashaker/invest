import 'package:invest_common/src/theme/theme.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KISelectableText extends StatelessWidget {
  final String text;

  final bool isSelected;

  /// The style to use when the text is not selected
  /// If not provided, the default style from the theme will be used
  /// Default: `AppTextStyle(level: AppTextLevel.bodyRegular, color: tokens.colors.textBodyPrimary)`
  final AppTextStyle? style;

  /// The style to use when the text is selected
  /// If not provided, the default selected style from the theme will be used
  /// Default: `AppTextStyle(level: AppTextLevel.bodyRegular, color: tokens.colors.actionableSecondary)`
  final AppTextStyle? selectedStyle;

  final VoidCallback? onToggle;

  const KISelectableText(
    this.text, {
    this.isSelected = false,
    this.style,
    this.selectedStyle,
    super.key,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final style = this.style ?? context.selectableTextTheme.properties.style;
    final selectedStyle = this.selectedStyle ??
        context.selectableTextTheme.properties.selectedStyle;

    return GestureDetector(
      onTap: onToggle,
      child: AppText(
        text,
        style: isSelected ? selectedStyle : style,
      ),
    );
  }
}
