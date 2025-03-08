import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/src/utils/color_premul_lerp.dart';

@immutable
class KISelectableCardColors extends ThemeExtension<KISelectableCardColors>
    with DiagnosticableTreeMixin {
  final Color backgroundColor;

  final Color selectedBackgroundColor;

  final Color boarderColor;

  final Color selectedBoarderColor;

  const KISelectableCardColors({
    required this.backgroundColor,
    required this.selectedBackgroundColor,
    required this.boarderColor,
    required this.selectedBoarderColor,
  });

  @override
  KISelectableCardColors copyWith({
    Color? backgroundColor,
    Color? selectedBackgroundColor,
    Color? boarderColor,
    Color? selectedBoarderColor,
  }) {
    return KISelectableCardColors(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      selectedBackgroundColor:
          selectedBackgroundColor ?? this.selectedBackgroundColor,
      boarderColor: boarderColor ?? this.boarderColor,
      selectedBoarderColor: selectedBoarderColor ?? this.selectedBoarderColor,
    );
  }

  @override
  KISelectableCardColors lerp(
      ThemeExtension<KISelectableCardColors>? other, double t) {
    if (other is! KISelectableCardColors) return this;

    return KISelectableCardColors(
      backgroundColor:
          colorPremulLerp(backgroundColor, other.backgroundColor, t)!,
      selectedBackgroundColor: colorPremulLerp(
          selectedBackgroundColor, other.selectedBackgroundColor, t)!,
      boarderColor: colorPremulLerp(boarderColor, other.boarderColor, t)!,
      selectedBoarderColor:
          colorPremulLerp(selectedBoarderColor, other.selectedBoarderColor, t)!,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty("type", "KISelectableCardColors"))
      ..add(DiagnosticsProperty<Color>("backgroundColor", backgroundColor))
      ..add(DiagnosticsProperty<Color>(
          "selectedBackgroundColor", selectedBackgroundColor))
      ..add(DiagnosticsProperty<Color>("boarderColor", boarderColor))
      ..add(DiagnosticsProperty<Color>(
          "selectedBoarderColor", selectedBoarderColor));
  }
}
