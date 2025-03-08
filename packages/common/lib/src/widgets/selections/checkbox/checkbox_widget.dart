import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KICheckbox extends StatelessWidget {
  KICheckbox({
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.activeIconColor,
    this.unActiveIconColor,
    super.key,
  });

  /// The background color of the checked checkbox.
  final Color? activeColor;

  /// The background color of the unchecked checkbox.
  final Color? inactiveColor;

  /// The activeIcon color of the checked checkbox.
  final Color? activeIconColor;

  /// The unActiveIcon color of the unchecked checkbox.
  final Color? unActiveIconColor;

  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final Color effectiveActiveColor =
        activeColor ?? context.checkboxTheme.colors.activeFillColor;
    final Color effectiveUnActiveColor =
        inactiveColor ?? context.checkboxTheme.colors.unactiveFillColor;
    final Color effectiveActiveIconColor =
        activeIconColor ?? context.checkboxTheme.colors.activeIconColor;
    final Color effectiveUnActiveIconColor =
        unActiveIconColor ?? context.checkboxTheme.colors.unActiveIconColor;

    return AppCheckbox(
      value: value,
      onChanged: onChanged,
      activeFillColor: effectiveActiveColor,
      unActiveFillColor: effectiveUnActiveColor,
      activeIconColor: effectiveActiveIconColor,
      unActiveIconColor: effectiveUnActiveIconColor,
    );
  }
}
