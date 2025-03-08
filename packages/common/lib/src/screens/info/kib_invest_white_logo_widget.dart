import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KIWhiteLogoWidget extends StatelessWidget {
  const KIWhiteLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/kib_invest_white_logo.svg',
      width: 90.rw,
      height: 31.rh,
      package: "invest_common",
      // fit: BoxFit.cover,
    );
  }
}
