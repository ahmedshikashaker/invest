import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';

class SignatureButtonWidget extends StatelessWidget {
  const SignatureButtonWidget({
    Key? key,
    this.applyColor,
    this.clearColor,
    this.applyStyle,
    this.clearStyle,
    this.spacing,
    this.padding,
    required this.applyButton,
    required this.clearButton,
    required this.onClear,
    required this.onApply,
  }) : super(key: key);

  final Color? applyColor;

  final Color? clearColor;

  final AppTextStyle? applyStyle;

  final AppTextStyle? clearStyle;

  final double? spacing;

  final AppEdgeInsets? padding;

  final String applyButton;
  final String clearButton;

  final VoidCallback onClear;
  final VoidCallback onApply;

  @override
  Widget build(BuildContext context) {
    final Color effectiveApplyColor =
        applyColor ?? context.signatureTheme.colors.applyColor;

    final Color effectiveClearColor =
        clearColor ?? context.signatureTheme.colors.clearColor;

    final AppTextStyle effectiveApplyStyle =
        applyStyle ?? context.signatureTheme.properties.applyStyle;

    final AppTextStyle effectiveClearStyle =
        clearStyle ?? context.signatureTheme.properties.clearStyle;

    final double effectiveSpacing =
        spacing ?? context.signatureTheme.properties.spacing;

    final AppEdgeInsets effectivePadding =
        padding ?? context.signatureTheme.properties.padding;

    return AppContainer(
      padding: effectivePadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: effectiveSpacing,
        children: [
          InkWell(
            onTap: onClear,
            child: AppText(
              clearButton,
              style: effectiveApplyStyle.copyWith(
                color: effectiveClearColor,
              ),
            ),
          ),
          InkWell(
            onTap: onApply,
            child: AppText(
              applyButton,
              style: effectiveClearStyle.copyWith(
                color: effectiveApplyColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
