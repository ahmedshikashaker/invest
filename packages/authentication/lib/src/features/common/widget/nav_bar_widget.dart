import 'package:kib_design_system/kib_design_system.dart';

import 'change_language_text.dart';
import 'side_menu_icon_widget.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      padding: AppEdgeInsets.symmetric(
        horizontal: AppGapSize.m,
        vertical: AppGapSize.m,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SideMenuIconWidget(),
          AppGap.xs(),
          ChangeLanguageText(),
        ],
      ),
    );
  }
}
