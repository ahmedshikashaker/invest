import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/on_boarding/cubit/on_boarding_cubit.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';

class OnBoardingDotsList extends StatelessWidget {
  final List<OnBoardingItem> boardings;

  const OnBoardingDotsList({super.key, required this.boardings});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<OnBoardingCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          boardings.length,
          (ind) => GestureDetector(
                onTap: () {
                  context.read<OnBoardingCubit>().onPageIndexChanged(ind);
                },
                child: AppContainer(
                  width: 12.w,
                  height: 12.w,
                  margin: const AppEdgeInsets.symmetric(
                      vertical: AppGapSize.xxs, horizontal: AppGapSize.xs),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: cubit.boardingIndex == ind
                          ? AppColorsData.white
                          : AppColorsData.shades[300]),
                ),
              )),
    );
  }
}
