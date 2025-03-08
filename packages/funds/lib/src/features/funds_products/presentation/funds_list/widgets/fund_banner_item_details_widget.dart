import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';

class FundBannerItemDetailsWidget extends StatelessWidget {
  const FundBannerItemDetailsWidget({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      AppText.smallRegular(
        title,
        color: context.tokens.colors.kiTextBodyPrimary
      ),
      AppText.smallMedium(
        description,
        color: context.tokens.colors.textBodySecondary,
      ),
    ]);
  }
}
