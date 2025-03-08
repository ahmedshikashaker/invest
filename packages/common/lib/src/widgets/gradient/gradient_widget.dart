import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class GradientWidget extends StatelessWidget {
  final BlendMode? blendMode;
  final Widget child;
  final Gradient? gradient;
  final List<Color>? colors;

  const GradientWidget({
    Key? key,
    this.gradient,
    required this.child,
    this.blendMode,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gradientBlendMode =
        blendMode ?? context.gradientTheme.properties.blendMode;
    final gradientColors = colors ??
        [
          context.gradientTheme.colors.primaryColor,
          context.gradientTheme.colors.secondaryColor
        ];
    return ShaderMask(
      blendMode: gradientBlendMode,
      shaderCallback: (bounds) {
        return gradient != null
            ? gradient!.createShader(bounds)
            : AppColorsData.createGradient(colors: gradientColors)
                .createShader(bounds);
      },
      child: child,
    );
  }
}
