import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../resources/Images_helper.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AuthModuleImages.kibLogo,
      package: AuthModuleImages.brandingAssetPackage,
      height: 87.rh,
      width: 196.rw,
      fit: BoxFit.cover,
    );
  }
}
