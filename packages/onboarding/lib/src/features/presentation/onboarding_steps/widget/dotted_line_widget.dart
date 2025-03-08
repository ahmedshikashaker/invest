import 'package:kib_design_system/kib_design_system.dart';

class DottedLine extends StatelessWidget {
  final int dotCount;
  final double dotSize;
  final Color dotColor;
  final double spacing;

  const DottedLine({
    Key? key,
    this.dotCount = 2,
    this.dotSize = 3.0,
    this.dotColor = AppColorsData.black,
    this.spacing = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        dotCount,
        (index) => Padding(
          padding: EdgeInsets.symmetric(vertical: spacing / 2),
          child: Container(
            width: dotSize,
            height: dotSize,
            decoration: BoxDecoration(
              color: dotColor,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
