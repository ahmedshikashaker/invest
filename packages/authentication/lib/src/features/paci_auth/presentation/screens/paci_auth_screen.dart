import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/paci_auth/presentation/cubit/paci_auth_cubit.dart';
import 'package:authentication/src/features/paci_auth/presentation/cubit/paci_auth_state.dart';
import 'package:authentication/src/features/paci_auth/presentation/widgets/paci_auth_body_bottom_widget.dart';
import 'package:authentication/src/features/paci_auth/presentation/widgets/paci_auth_body_top_widget.dart';
import 'package:authentication/src/features/paci_auth/presentation/widgets/paci_auth_timer_widget.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';
@RoutePage()
class PaciAuthScreen extends StatefulWidget {
  const PaciAuthScreen({Key? key}) : super(key: key);

  @override
  State<PaciAuthScreen> createState() => _PaciAuthScreenState();
}

class _PaciAuthScreenState extends State<PaciAuthScreen> with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PaciAuthCubit>()..initPaci(),
        child: BlocConsumer<PaciAuthCubit, PaciAuthState>(
          listener: (context, state) {
            final cubit = context.read<PaciAuthCubit>();
            state.maybeWhen(
              error: (error) => handleErrors(
                error,
                action: () => cubit.initPaci(),
              ),
              paciApproved: () => context.router.replace(
                  PaciAuthSuccessRoute(paciInfoModel: cubit.paciInfoModel)),
              paciRejected: () => AppPopUpInfo(
                title: context.authLocal.paciAuthenticationFailedTitle,
                body: context.authLocal.paciAuthenticationFailedDescription,
              ),
              orElse: () => {},
            );
          },
          builder: (context, state) {
            final cubit = context.watch<PaciAuthCubit>();
            return KISuccessfulScreen(
              actionWidget: GestureDetector(
                  onTap: () => context.router.pop(),
                  child: AppIcon(
                    icon: Assets.icons.close,
                    color: AppColorsData.white,
                  )),
              icon: AppContainer(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppText.sublineHeavy(
                    context.authLocal.paciAuthHeader,
                    color: AppColorsData.white,
                  ),
                  AppGap.xl(),
                  AppContainer(
                    padding: AppEdgeInsets.symmetric(
                        vertical: AppGapSize.xl, horizontal: AppGapSize.m),
                    decoration: BoxDecoration(
                      color: context.colors.kiWhite,
                      borderRadius: context.radius.asBorderRadius().regular,
                    ),
                    child: Column(
                      children: [
                        AppCircularProgressIndicator(),
                        AppGap.l(),
                        PaciAuthBodyTopWidget(),
                        AppGap.m(),
                        PaciAuthBodyBottomWidget(),
                      ],
                    ),
                  ),
                  AppGap.xl(),
                  PaciAuthTimerWidget(),
                ],
              ),
              button: AppButton.contrast(
                  mainAxisSize: MainAxisSize.max,
                  title: context.authLocal.reAuthPaciHeader,
                  state: cubit.isButtonDisabled? AppButtonState.disabled: AppButtonState.enabled,
                  onTap: () => cubit.resetTimer()),
            );
          },
        ));
  }
}
