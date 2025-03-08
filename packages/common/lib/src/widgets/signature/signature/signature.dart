import 'package:flutter/foundation.dart';

import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:signature/signature.dart';


class KISignature extends StatelessWidget {
  KISignature(
      {Key? key,
      this.penStrokeWidth,
      this.height,
      this.penColor,
      this.backgroundColor,
      this.gapSize,
      this.borderRadius,
      this.border,
      required this.applyButton,
      required this.clearButton,
      required this.onClear,
      required this.onApply})
      : super(key: key);

  final BorderRadiusGeometry? borderRadius;
  final double? penStrokeWidth;
  final double? height;
  final Color? penColor;
  final Color? backgroundColor;
  final AppGapSize? gapSize;
  final Border? border;

  final String applyButton;
  final String clearButton;
  final VoidCallback onClear;
  final Function(Uint8List? points) onApply;

  @override
  Widget build(BuildContext context) {
    final double effectivePenStrokeWidth =
        penStrokeWidth ?? context.signatureTheme.properties.penStrokeWidth;

    final Color effectivePenColor =
        penColor ?? context.signatureTheme.colors.penColor;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.signatureTheme.colors.backgroundColor;

    final SignatureController controller = SignatureController(
        penStrokeWidth: effectivePenStrokeWidth,
        penColor: effectivePenColor,
        exportBackgroundColor: effectiveBackgroundColor);

    final AppGapSize effectiveGapSize =
        gapSize ?? context.signatureTheme.properties.gapSize;

    final BorderRadiusGeometry effectiveBorderRadius =
        borderRadius ?? context.signatureTheme.properties.borderRadius;

    return AppContainer(
      decoration: BoxDecoration(
        color: effectiveBackgroundColor,
        borderRadius: effectiveBorderRadius,
      ),
      child: Column(
        children: [
          SignatureWidget(
            height: height,
            border: border,
            controller: controller,
          ),
          AppGap(effectiveGapSize),
          SignatureButtonWidget(
            applyButton: applyButton,
            clearButton: clearButton,
            onClear: () {
              onClear();
              controller.clear();
            },
            onApply: () async {
              controller.isNotEmpty
                  ? onApply(await controller.toPngBytes())
                  : null;
            },
          )
        ],
      ),
    );
  }
}
