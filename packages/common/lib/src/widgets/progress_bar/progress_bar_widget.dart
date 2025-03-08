import 'package:invest_common/src/theme/theme.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KIProgressIndicator extends StatelessWidget {
  final double progress; // Value from 0.0 to 1.0
  final double? height;

  final Color? progressColor;
  final Color? backgroundColor;

  final double? borderRadius;

  const KIProgressIndicator({
    required this.progress,
    this.height,
    this.progressColor,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final Color effectiveProgressColor =
        progressColor ?? context.progressBarTheme.colors.progressColor;

    final Color effectiveBackgroundColor =
        backgroundColor ?? context.progressBarTheme.colors.backgroundColor;

    final double effectiveHeight =
        height ?? context.progressBarTheme.properties.height;

    final double effectiveBorderRadius =
        borderRadius ?? context.progressBarTheme.properties.borderRadius;

    return Container(
      height: effectiveHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        color: effectiveBackgroundColor,
        borderRadius: BorderRadius.circular(effectiveBorderRadius),
      ),
      child: FractionallySizedBox(
        widthFactor: progress,
        alignment: Alignment.centerLeft,
        child: Container(
          width: double.infinity,
          height: height,
          decoration: BoxDecoration(
            color: effectiveProgressColor,
            borderRadius: BorderRadius.circular(effectiveBorderRadius),
          ),
        ),
      ),
    );
  }
}
