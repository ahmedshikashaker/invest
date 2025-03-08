import 'package:authentication/authentication.dart';
import 'package:authentication/src/features/forget_password/screen/verify_otp/verify_forget_password_screen.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:invest_common/common.dart';
import 'package:kib_core/kib_core.dart';

@RoutePage()
class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgetPasswordCubit>(
      create: (context) => getIt<ForgetPasswordCubit>(),
      child: BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
          state.whenOrNull(businessError: (error) {
            // handleErrors(error);
          }, successForgetPasswordInit: (model) async {
            final cubit = context.read<ForgetPasswordCubit>();
            await showForgetPasswordMobileNumberOtpBottomSheet(
                context, cubit.mobileNumber.removeWhiteSpace??'', cubit.civilId, model.actionToken!);
          }
              // error: (error, __) => handleErrors(error),
              );
        },
        child: Builder(builder: (context) {
          final cubit = context.watch<ForgetPasswordCubit>();
          return AuthScaffold(
            title: context.authLocal.forgotPassword,
            subtitle: context.authLocal.pleaseEnterYourCivilIDAndPhoneNumber,
            body: Column(
              children: [
                AppGap.xl(),
                AppTextField.text(
                  label: context.authLocal.civilID,
                  onChanged: cubit.onCivilIdChanged,
                ),
                AppGap.xl(),
                CountryTextField(
                  hint: context.authLocal.mobileNumber,
                  onChanged: cubit.onMobileNumberChanged,
                  flag: AppIcon(icon: Assets.images.flags.countryKW, size: 16),
                ),
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
                    // context.router.pushNamed(
                    //     AuthenticationModuleRoutes.resetPasswordPath);
                     cubit.forgetPasswordInit();
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
    BuildContext context, ForgetPasswordCubit cubit) {
  return cubit.state.maybeWhen(orElse: () => true, loading: () => false)
      ? cubit.isValidToContinue
          ? AppButtonState.enabled
          : AppButtonState.disabled
      : AppButtonState.loading;
}
