import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KIConvertSwitchParams {
  final GestureTapCallback? onSwitchTap;
  final SvgGenImage? icon;
  final Color? iconColor;
  final double? iconSize;

  KIConvertSwitchParams(
      {this.iconColor, this.iconSize, this.onSwitchTap, this.icon});
}

class KIConverterSwitchWidget extends StatelessWidget {
  final KIConvertSwitchParams params;

  const KIConverterSwitchWidget({Key? key, required this.params})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color effectiveIconColor =
        params.iconColor ?? context.converterSwitchTheme.colors.iconColor;

    final double effectiveIconSize =
        params.iconSize ?? context.converterSwitchTheme.properties.iconSize;

    return Center(
      child: GestureDetector(
        onTap: params.onSwitchTap,
        child: AppContainer(
          // padding: const AppEdgeInsets.xxs(),
          decoration: BoxDecoration(
            color: context.converterTheme.colors.backgroundColor,
          ),
          child: AppIcon(
            size: effectiveIconSize,
            icon: params.icon ?? Assets.icons.switchVertical,
            color: effectiveIconColor,
          ),
        ),
      ),
    );
  }
}
