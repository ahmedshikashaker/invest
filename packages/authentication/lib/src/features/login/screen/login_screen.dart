import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';
import 'package:onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:subscription/subscription.dart';
import 'package:home/home.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          state.whenOrNull(
            businessError: (error) {
              // handleErrors(error);
            },
            // error: (error, __) => handleErrors(error),
            successLogin: (responseData) {
              if (context.read<LoginCubit>().isPaciApproved) {
                context.router.replaceAll([OnboardingStepsRoute()]);
              } else {
                context.router.push(OnboardingUnAuthStepsRoute());
              }
            },
          );
        },
        child: Builder(builder: (context) {
          final cubit = context.watch<LoginCubit>();
          return AuthScaffold(
            title: context.authLocal.loginDetails,
            subtitle: context.authLocal.pleaseEnterYourEmailIDAndPassword,
            body: Column(
              children: [
                AppGap.xl(),
                AppTextField.text(
                  label: context.authLocal.emailID,
                  onChanged: cubit.onEmailIdChanged,
                ),
                AppGap.xl(),
                AppTextField.password(
                  label: context.authLocal.password,
                  onChanged: cubit.onPasswordChanged,
                ),
                AppGap.m(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () => context.router.pushNamed(
                          AuthenticationModuleRoutes.forgetPasswordPath),
                      child: AppText.captionBold(
                        context.authLocal.didYouForgotPassword,
                        color: AppColorsData.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bottom: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppButton.contrast(
                  mainAxisSize: MainAxisSize.max,
                  title: context.authLocal.login,
                  titleColor:
                  context.contrastButtonTheme.colors.textButtonColor,
                  state: _checkButtonStates(context, cubit),
                  onTap: () {
                    cubit.login();
                  },
                ),
                AppGap.xl(),
                AppText.smallMedium(
                  context.authLocal.neverUsedOnlineKIBInvestBefore,
                  color: AppColorsData.white,
                ),
                AppGap.xxs(),
                InkWell(
                  onTap: () {
                    context.pushRoute(RegistrationRoute());
                  },
                  child: AppText.bodyBold(
                    context.authLocal.registerNow,
                    color: AppColorsData.white,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

AppButtonState _checkButtonStates(BuildContext context, LoginCubit cubit) {
  return cubit.state.maybeWhen(orElse: () => true, loading: () => false)
      ? cubit.isValidToLogin
          ? AppButtonState.enabled
          : AppButtonState.disabled
      : AppButtonState.loading;
}
