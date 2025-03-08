import 'package:invest_common/src/theme/theme.dart';
import 'package:invest_common/src/widgets/progress_bar/progress_bar_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';

/// A customizable widget that displays a labeled progress indicator,
/// including a title, step information, and a progress bar.
///
/// Supports customization of styles, dimensions, colors, and gaps.
///
/// Example Usage:
///
/// ```dart
/// KIStepLabeledProgressIndicator(
///   title: "Upload Documents",
///   step: "Step 1 of 3",
///   currentStep: 1,
///   totalSteps: 3,
///   progressHeight: 8.0, // Optional: height of the progress bar
///   progressColor: Colors.teal, // Optional: active progress bar color
///   progressBackgroundColor: Colors.grey[300], // Optional: background color
///   progressBorderRadius: 4.0, // Optional: rounded corners for the bar
///   titleTextStyle: AppTextStyle(
///     color: tokens.colors.textBodySecondary,
///     level: AppTextLevel.smallRegular,
///   ), // Custom style for the title
///   stepTextStyle: AppTextStyle(
///     color: tokens.colors.textBodyPrimary,
///     level: AppTextLevel.smallBold,
///   ), // Custom style for the step text
///   titleGapSize: AppGapSize.xxs, // Space between title and step (extra extra small)
///   verticalGapSize: AppGapSize.xs, // Space between step and progress bar (extra small)
/// );
/// ```
class KIStepLabeledProgressIndicator extends StatelessWidget {
  /// Creates a `KIStepLabeledProgressIndicator`.
  ///
  /// [title] and [step] are required to display the title and step information.
  /// [currentStep] and [totalSteps] are required to calculate the progress.
  const KIStepLabeledProgressIndicator({
    required this.title,
    required this.step,
    required this.currentStep,
    required this.totalSteps,
    this.progressHeight,
    this.progressColor,
    this.progressBackgroundColor,
    this.progressBorderRadius,
    this.titleTextStyle,
    this.stepTextStyle,
    this.titleGapSize,
    this.verticalGapSize,
    super.key,
  });

  final String title;

  final String step;

  final double? progressHeight;

  final Color? progressColor;
  final Color? progressBackgroundColor;

  final double? progressBorderRadius;

  final int currentStep;
  final int totalSteps;

  final AppTextStyle? titleTextStyle;
  final AppTextStyle? stepTextStyle;

  final AppGapSize? titleGapSize;
  final AppGapSize? verticalGapSize;

  @override
  Widget build(BuildContext context) {
    final AppTextStyle effectiveTitleTextStyle =
        titleTextStyle ?? context.progressBarTheme.properties.titleTextStyle;

    final AppTextStyle effectiveStepTextStyle =
        stepTextStyle ?? context.progressBarTheme.properties.stepTextStyle;

    final AppGapSize effectiveTitleGapSize =
        titleGapSize ?? context.progressBarTheme.properties.titleGapSize;

    final AppGapSize effectiveVerticalGapSize =
        verticalGapSize ?? context.progressBarTheme.properties.verticalGapSize;

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              AppText(
                title,
                style: effectiveTitleTextStyle,
              ),
              AppGap(effectiveTitleGapSize),
              AppText(
                step,
                style: effectiveStepTextStyle,
              ),
            ],
          ),
          AppGap(effectiveVerticalGapSize),
          KIProgressIndicator(
            height: progressHeight,
            progressColor: progressColor,
            backgroundColor: progressBackgroundColor,
            borderRadius: progressBorderRadius,
            progress: currentStep / totalSteps,
          ),
        ],
      ),
    );
  }
}
