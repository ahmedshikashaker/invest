import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';

class KIRadio extends StatelessWidget {
  KIRadio({
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveBorderColor,
    this.inactiveBackgroundColor,
    super.key,
  });

  /// The background color of the checked checkbox.
  final Color? activeColor;

  /// The background color of the unchecked checkbox.
  final Color? inactiveBackgroundColor;

  final Color? inactiveBorderColor;

  bool value;
  ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    final Color effectiveActiveColor =
        activeColor ?? context.radioTheme.colors.activeFillColor;

    final Color effectiveInActiveBorderColor = inactiveBackgroundColor ??
        context.radioTheme.colors.inactiveBorderColor;

    final Color effectiveInActiveBackgroundColor = inactiveBackgroundColor ??
        context.radioTheme.colors.inactiveBackgroundColor;

    return SizedBox(
      height: 24,
      width: 24,
      child: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Stack(
          children: [
            // Background for the radio button is transparent when not selected
            // Need to add background container when not selected
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(
                  color: value ? null : effectiveInActiveBackgroundColor,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Radio<bool>(
              value: value,
              groupValue: true,
              onChanged: (value) => onChanged(!value!),
              fillColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return effectiveActiveColor;
                  }
                  return effectiveInActiveBorderColor;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
