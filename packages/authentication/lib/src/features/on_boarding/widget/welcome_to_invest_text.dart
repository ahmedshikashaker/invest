import 'package:kib_design_system/kib_design_system.dart';

class WelcomeToInvestText extends StatelessWidget {
  const WelcomeToInvestText(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.headline(
          title,
          color: AppColorsData.white,
        ),
        const AppGap.s(),
        AppText.captionRegular(
          description,
          color: AppColorsData.white,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const AppGap.s(),
      ],
    );
  }
}
