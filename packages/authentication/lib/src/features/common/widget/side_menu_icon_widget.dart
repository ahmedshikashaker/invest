import 'package:kib_design_system/kib_design_system.dart';

class SideMenuIconWidget extends StatelessWidget {
  const SideMenuIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showAppDrawerBottomSheet(context,
          drawer: AppDrawer(
            body: Wrap(
              children: [],
            ),
          )),
      child: AppIcon(
        icon: Assets.icons.hamburger,
        color: AppColorsData.white,
        matchTextDirection: true,
      ),
    );
  }
}
