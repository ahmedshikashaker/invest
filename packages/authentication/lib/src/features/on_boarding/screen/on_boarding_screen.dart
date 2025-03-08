import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/on_boarding/widget/onboarding_bottom_widget.dart';
import 'package:authentication/src/features/on_boarding/widget/onboarding_top_widget.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import '../cubit/on_boarding_cubit.dart';
import '../cubit/on_boarding_state.dart';

@RoutePage()
class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    final boardings = OnBoardingItems(context);
    return BlocProvider<OnBoardingCubit>(
      create: (context) => getIt<OnBoardingCubit>(),
      child: BlocListener<OnBoardingCubit, OnBoardingState>(
        listener: (context, state) {
          state.whenOrNull(pageChanged: (value) {
            _controller.animateToPage(value,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut);
          });
        },
        child: AppScaffold(
          body: Builder(
            builder: (context) {
              return Stack(
                children: [
                  PageView.builder(
                    controller: _controller,
                    itemCount: boardings.length,
                    onPageChanged: (value) {
                      context.read<OnBoardingCubit>().onPageIndexChanged(value);
                    },
                    itemBuilder: (context, index) {
                      return Image.asset(
                        fit: BoxFit.cover,
                        boardings[index].backgroundImage,
                        package: AuthModuleImages.brandingAssetPackage,
                      );
                    },
                  ),
                  OnboardingTopWidget(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: OnBoardingBottomWidget(
                      boardings: boardings,
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
