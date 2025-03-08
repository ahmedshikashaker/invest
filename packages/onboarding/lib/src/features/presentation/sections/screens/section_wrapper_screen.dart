import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/features/presentation/cubit/step_cubit.dart';

@RoutePage()
class SectionWrapperScreen extends StatefulWidget {
  const SectionWrapperScreen({super.key, required this.stepId});

  final String stepId;

  @override
  State<SectionWrapperScreen> createState() => _SectionWrapperScreenState();
}

class _SectionWrapperScreenState extends State<SectionWrapperScreen> with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StepCubit>()..loadStep(widget.stepId),
      child: BlocListener<StepCubit, StepState>(
        listener: (context, state) {
          state.whenOrNull(
              error: (errors, callback) => handleErrors(
                errors,
                action: () => callback(),
              ),
              loaded: (navigationTree) {
            if (navigationTree != null) context.router.push(navigationTree);
          });
        },
        child: AutoRouter(
          placeholder: (context) => KIAppScaffold(
            backgroundColor: context.colors.kiLightBackground,
            appbar: (controller) => KIAppBarWidget(
              height: 165.rh,
              animationController: controller,
              title: AppContainer(),
              canPop: true,

              centeredTitle: AppContainer(),
            ),
            body: (BuildContext context,
                AnimationController animationController,
                ScrollController scrollController) {
              return SizedBox.expand();
            },
          ),
        ),
      ),
    );
  }
}
