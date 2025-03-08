import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';

import 'package:kib_core/kib_core.dart';

import 'widget/password_role_widget.dart';

@RoutePage()
class ResetPasswordScreen extends StatelessWidget {
  final String? actionToken;

  ResetPasswordScreen({super.key, this.actionToken});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ResetPasswordCubit>(
      create: (context) => getIt<ResetPasswordCubit>()..actionToken = actionToken??'',
      child: BlocListener<ResetPasswordCubit, ResetPasswordState>(
        listener: (context, state) {
          state.whenOrNull(businessError: (error) {
            // handleErrors(error);
          }, successForgetPasswordReset: (_) {
            context.router.replaceAll([
              LandingRouteRoute(),
              LoginRoute(),
              ResetPasswordSuccessRoute()
            ]);
          }
              // error: (error, __) => handleErrors(error),
              );
        },
        child: Builder(builder: (context) {
          final cubit = context.watch<ResetPasswordCubit>();
          return AuthScaffold(
            title: context.authLocal.resetPassword,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppGap.xl(),
                AppTextField.password(
                  label: context.authLocal.password,
                  onChanged: cubit.onPasswordChanged,
                ),
                AppGap.xl(),
                AppTextField.password(
                  label: context.authLocal.confirmPassword,
                  onChanged: cubit.onConfirmPasswordChanged,
                ),
                AppGap.xs(),
                PasswordRoleWidget(),
              ],
            ),
            bottom: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton.contrast(
                  mainAxisSize: MainAxisSize.max,
                  title: context.authLocal.buttonContinue,
                  titleColor:
                      context.contrastButtonTheme.colors.textButtonColor,
                  state: _checkButtonStates(context, cubit),
                  onTap: () {
                    cubit.forgetPasswordReset();
                  },
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

AppButtonState _checkButtonStates(
    BuildContext context, ResetPasswordCubit cubit) {
  return cubit.state.maybeWhen(orElse: () => true, loading: () => false)
      ? cubit.isValidToContinue
          ? AppButtonState.enabled
          : AppButtonState.disabled
      : AppButtonState.loading;
}
