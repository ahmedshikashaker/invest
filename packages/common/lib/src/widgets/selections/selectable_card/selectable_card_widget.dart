import 'package:invest_common/src/theme/theme.dart';
import 'package:invest_common/src/widgets/selections/checkbox/checkbox_widget.dart';
import 'package:invest_common/src/widgets/selections/radio/radio_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';

enum KISelectionType { checkbox, radio }

class KISelectableCard extends StatelessWidget {
  final Widget content;
  final Widget? bottomWidget;
  final bool isSelected;
  final KISelectionType selectionType;
  final Function(bool isSelected) onToggle;

  final AppEdgeInsets? padding;

  final Color? backgroundColor;
  final Color? selectedBackgroundColor;
  final Color? boarderColor;
  final Color? selectedBoarderColor;

  final BorderRadiusGeometry? borderRadius;
  final double? borderWidth;
  final double? selectedBorderWidth;

  final CrossAxisAlignment? crossAxisAlignment;

  final AppGapSize? horizontalGapValue;
  final AppGapSize? verticalGapForBottomWidgetValue;

  /// Private constructor for `SelectableCard`
  const KISelectableCard._({
    required this.content,
    this.bottomWidget,
    required this.isSelected,
    required this.selectionType,
    required this.onToggle,
    this.padding,
    this.backgroundColor,
    this.selectedBackgroundColor,
    this.boarderColor,
    this.selectedBoarderColor,
    this.borderRadius,
    this.borderWidth,
    this.selectedBorderWidth,
    this.horizontalGapValue,
    this.verticalGapForBottomWidgetValue,
    this.crossAxisAlignment,
    super.key,
  });

  /// Named constructor for a checkbox-based card
  KISelectableCard.checkbox({
    required Widget content,
    Widget? bottomWidget,
    required bool isChecked,
    required Function(bool isSelected) onToggle,
    AppEdgeInsets? padding,
    Color? backgroundColor,
    Color? selectedBackgroundColor,
    Color? boarderColor,
    Color? selectedBoarderColor,
    BorderRadiusGeometry? borderRadius,
    double? borderWidth,
    double? selectedBorderWidth,
    AppGapSize? horizontalGapValue,
    AppGapSize? verticalGapForBottomWidgetValue,
    CrossAxisAlignment? crossAxisAlignment,
    Key? key,
  }) : this._(
          content: content,
          bottomWidget: bottomWidget,
          isSelected: isChecked,
          selectionType: KISelectionType.checkbox,
          onToggle: onToggle,
          padding: padding,
          backgroundColor: backgroundColor,
          selectedBackgroundColor: selectedBackgroundColor,
          boarderColor: boarderColor,
          selectedBoarderColor: selectedBoarderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          selectedBorderWidth: selectedBorderWidth,
          horizontalGapValue: horizontalGapValue,
          verticalGapForBottomWidgetValue: verticalGapForBottomWidgetValue,
          crossAxisAlignment: crossAxisAlignment,
          key: key,
        );

  /// Named constructor for a radio-based card
  KISelectableCard.radio({
    required Widget content,
    Widget? bottomWidget,
    required bool isSelected,
    required Function(bool isSelected) onToggle,
    AppEdgeInsets? padding,
    Color? backgroundColor,
    Color? selectedBackgroundColor,
    Color? boarderColor,
    Color? selectedBoarderColor,
    BorderRadiusGeometry? borderRadius,
    double? borderWidth,
    double? selectedBorderWidth,
    AppGapSize? horizontalGapValue,
    AppGapSize? verticalGapForBottomWidgetValue,
    CrossAxisAlignment? crossAxisAlignment,
    Key? key,
  }) : this._(
          content: content,
          bottomWidget: bottomWidget,
          isSelected: isSelected,
          selectionType: KISelectionType.radio,
          onToggle: onToggle,
          padding: padding,
          backgroundColor: backgroundColor,
          selectedBackgroundColor: selectedBackgroundColor,
          boarderColor: boarderColor,
          selectedBoarderColor: selectedBoarderColor,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          selectedBorderWidth: selectedBorderWidth,
          horizontalGapValue: horizontalGapValue,
          verticalGapForBottomWidgetValue: verticalGapForBottomWidgetValue,
          crossAxisAlignment: crossAxisAlignment,
          key: key,
        );

  BoxDecoration _buildDecoration(BuildContext context) {
    return BoxDecoration(
      color: isSelected
          ? selectedBackgroundColor ??
              context.selectableCardTheme.colors.selectedBackgroundColor
          : backgroundColor ??
              context.selectableCardTheme.colors.backgroundColor,
      border: Border.all(
        color: isSelected
            ? selectedBoarderColor ??
                context.selectableCardTheme.colors.selectedBoarderColor
            : boarderColor ?? context.selectableCardTheme.colors.boarderColor,
        width: isSelected
            ? selectedBorderWidth ??
                context.selectableCardTheme.properties.selectedBorderWidth
            : borderWidth ?? context.selectableCardTheme.properties.borderWidth,
      ),
      borderRadius:
          borderRadius ?? context.selectableCardTheme.properties.borderRadius,
    );
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry effectivePadding =
        padding?.toEdgeInsets(context.tokens) ??
            context.selectableCardTheme.properties.padding
                .toEdgeInsets(context.tokens);

    final AppGapSize effectiveHorizontalGapValueValue = horizontalGapValue ??
        context.selectableCardTheme.properties.horizontalGapValue;

    final AppGapSize effectiveVerticalGapForBottomWidgetValue =
        verticalGapForBottomWidgetValue ??
            context
                .selectableCardTheme.properties.verticalGapForBottomWidgetValue;

    final CrossAxisAlignment effectiveCrossAxisAlignment = crossAxisAlignment ??
        context.selectableCardTheme.properties.crossAxisAlignment;

    final BoxDecoration effectiveDecoration = _buildDecoration(context);

    // Selection widget (checkbox or radio button)
    final Widget selectionWidget = selectionType == KISelectionType.checkbox
        ? KICheckbox(
            value: isSelected,
            onChanged: (_) => onToggle.call(!isSelected),
          )
        : KIRadio(
            value: isSelected,
            onChanged: (_) => onToggle.call(!isSelected),
          );

    return GestureDetector(
      onTap: () => onToggle.call(!isSelected),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: effectivePadding,
        decoration: effectiveDecoration,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: effectiveCrossAxisAlignment,
              children: [
                Expanded(child: content),
                AppGap(effectiveHorizontalGapValueValue),
                selectionWidget,
              ],
            ),
            if (bottomWidget != null) ...[
              AppGap(effectiveVerticalGapForBottomWidgetValue),
              bottomWidget!,
            ],
          ],
        ),
      ),
    );
  }
}
