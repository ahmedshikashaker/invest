import 'package:home/src/features/dashboard/presentation/widgets/dashboard_appbar_widget.dart';
import 'package:home/src/features/dashboard/presentation/widgets/dashboard_setup_profile_header_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/onboarding.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KIAppScaffold(
      backgroundColor: context.colors.kiBackground,
      appbar: (appBarController) => KIAppBarWidget(
          backgroundWidget: AppContainer(
            decoration: BoxDecoration(color: context.colors.kiBackground),
          ),
          animationController: appBarController,
          title: DashboardAppBarWidget(),
          canPop: false,
          centeredTitle: AppContainer()),
      body: (context, animationController, scrollController) => Column(
        
        children: [
          ListView(
            controller: scrollController,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              AppGap.m(),
              DashboardSetUpProfileHeader(),
              AppGap.m(),
              Column(
                children: [
                  OnboardingStepsHomeEntryPointWidget(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
