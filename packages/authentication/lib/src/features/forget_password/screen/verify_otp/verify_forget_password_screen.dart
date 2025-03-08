import 'package:authentication/authentication.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:otp/otp.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

Future<String?> showForgetPasswordMobileNumberOtpBottomSheet(
  BuildContext context,
  String mobileNumber,
  String civilId,
  String actionToken,
) async {
  return await showAppModalBottomSheet(
    context,
    headerBackgroundColor: Colors.transparent,
    padding: const AppEdgeInsets.m(),
    body: BlocProvider(
      create: (context) => getIt<VerifyForgetPasswordCubit>()
        ..actionToken = actionToken
        ..civilId = civilId
        ..mobileNumber = mobileNumber,
      child: MobileNumberOTPVerificationScreen(),
    ),
  );
}

class MobileNumberOTPVerificationScreen extends StatefulWidget {
  const MobileNumberOTPVerificationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileNumberOTPVerificationScreen> createState() =>
      _MobileNumberOTPVerificationScreenState();
}

class _MobileNumberOTPVerificationScreenState
    extends State<MobileNumberOTPVerificationScreen> with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<VerifyForgetPasswordCubit>();
    return BlocListener<VerifyForgetPasswordCubit, VerifyForgetPasswordState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (errors, callback) => handleErrors(
            errors,
            action: () => callback(),
          ),
          successForgetPasswordVerify: (data) {
            context.maybePop();
            context.router.replace(ResetPasswordRoute(actionToken: data.actionToken));
          },
        );
      },
      child: AppResponsiveTheme(
        language: context.language.isArabic ? AppLanguage.ar : AppLanguage.en,
        child: OTPVerificationScreen(
          title: AuthenticationLocalizations.of(context)
              .authenticationMobileNumberOTPTitle,
          verificationReceiver:
              PhoneNumberModel.kw(cubit.mobileNumber).format(),
          resendOtp: cubit.requestMobileVerify,
          onVerify: cubit.onVerifyOtp,
        ),
      ),
    );
  }
}
