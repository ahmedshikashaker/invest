import 'package:authentication/src/features/registration/presentation/email_otp/cubit/email_otp_cubit.dart';
import 'package:authentication/src/features/registration/presentation/email_otp/cubit/email_otp_state.dart';
import 'package:authentication/src/l10n/gen/authentication_localizations.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:otp/otp.dart';
import 'package:common_dependencies/common_dependencies.dart';
import 'package:kib_core/kib_core.dart';
import 'package:invest_common/common.dart';

Future<String?> showEmailOtpBottomSheet(
  BuildContext context,
  String email,
  String actionToken,
) async {
  return await showAppModalBottomSheet(
    context,
    headerBackgroundColor: Colors.transparent,
    padding: const AppEdgeInsets.m(),
    body: BlocProvider(
      create: (context) => getIt<EmailOtpCubit>()
        ..actionToken = actionToken
        ..email = email,
      child: EmailOTPVerificationScreen(
        email: email,
      ),
    ),
  );
}

class EmailOTPVerificationScreen extends StatefulWidget {
  const EmailOTPVerificationScreen({
    Key? key,
    required this.email,
  }) : super(key: key);

  final String email;

  @override
  State<EmailOTPVerificationScreen> createState() =>
      _EmailOTPVerificationScreenState();
}

class _EmailOTPVerificationScreenState extends State<EmailOTPVerificationScreen>
    with ErrorStateMixin {
  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<EmailOtpCubit>();
    return BlocListener<EmailOtpCubit, EmailOtpState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (errors, callback) => handleErrors(
            errors,
            action: () => callback(),
          ),
          success: (actionToken) {
            context.maybePop(actionToken);
          },
        );
      },
      child: AppResponsiveTheme(
        language: context.language.isArabic ? AppLanguage.ar : AppLanguage.en,
        darkColorsPallet: context.tokens.colors,
        lightColorsPallet: context.tokens.colors,
        child: OTPVerificationScreen(
          title: AuthenticationLocalizations.of(context)
              .authenticationEmailOTPTitle,
          verificationReceiver: cubit.email ?? "",
          resendOtp: cubit.requestEmailVerify,
          onVerify: cubit.onVerifyOtp,

        ),
      ),
    );
  }
}
