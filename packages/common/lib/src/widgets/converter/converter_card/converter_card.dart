import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';


class KIConverter extends StatelessWidget {
  final AppEdgeInsets? fieldPadding;
  final BorderRadiusGeometry? borderRadius;
  final Color? dividerColor;
  final Color? backgroundColor;
  final AppGapSize? gapSize;

  /// primary widget
  final KIConvertFieldParams? primaryFieldParams;
  final Widget? primaryField;

  /// secondary widget
  final KIConvertFieldParams? secondaryFieldParams;
  final Widget? secondaryField;

  /// Switch widget
  final KIConvertSwitchParams? convertSwitchParams;
  final Widget? convertSwitch;

  final Widget? infoWidget;

  KIConverter(
      {this.fieldPadding,
      this.borderRadius,
      this.gapSize,
      this.primaryFieldParams,
      this.primaryField,
      this.secondaryFieldParams,
      this.secondaryField,
      this.dividerColor,
      this.backgroundColor,
      this.infoWidget,
      this.convertSwitchParams,
      this.convertSwitch});

  @override
  Widget build(BuildContext context) {
    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.converterTheme.properties.borderRadius;

    final Color effectiveDividerColor =
        dividerColor ?? context.converterTheme.colors.dividerColor;

    final AppGapSize effectiveGapSize =
        gapSize ?? context.converterTheme.properties.gapSize;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.converterTheme.colors.backgroundColor;

    return Column(
      children: [
        AppContainer(
          decoration: BoxDecoration(
            color: effectiveBackgroundColor,
            borderRadius: effectiveBorderRadius,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  primaryField ??
                      KIConverterField(
                        fieldPadding: fieldPadding,
                        convertFieldParams:
                            primaryFieldParams ?? KIConvertFieldParams(),
                      ),
                  AppItemDivider(
                    color: effectiveDividerColor,
                  ),
                  secondaryField ??
                      KIConverterField(
                        fieldPadding: fieldPadding,
                        convertFieldParams:
                            secondaryFieldParams ?? KIConvertFieldParams(),
                      ),
                ],
              ),
              Positioned.fill(
                child: convertSwitch ??
                    KIConverterSwitchWidget(
                      params: convertSwitchParams ?? KIConvertSwitchParams(),
                    ),
              ),
            ],
          ),
        ),
        if (infoWidget != null) ...[AppGap(effectiveGapSize), infoWidget!]
      ],
    );
  }
}
