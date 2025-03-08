// import 'package:flutter/material.dart';
// import 'package:kib_core/kib_core.dart';
// import 'package:kib_design_system/kib_design_system.dart';
// import 'package:otp/otp.dart';
//
// mixin OtpViewMixin on Widget {
//   showOTP(
//     BuildContext context, {
//     Function? onSuccess,
//     required ResendOtp resendOtp,
//     required VerifyOtp onVerify,
//     String? verificationReceiver,
//   }) async {
//     final result = await _showOtpModalBottomSheet(
//       context: context,
//       resendOtp: resendOtp,
//       onVerify: onVerify,
//       verificationReceiver:
//           verificationReceiver?.maskedKuwaitMobileNumber ?? '',
//     );
//     if (result == OTPVerificationResult.success) {
//       onSuccess?.call();
//     }
//   }
//
//   _showOtpModalBottomSheet({
//     required BuildContext context,
//     required ResendOtp resendOtp,
//     required VerifyOtp onVerify,
//     required String verificationReceiver,
//   }) async {
//     return await showAppModalBottomSheet(
//       context,
//       headerBackgroundColor:
//           AppResponsiveTheme.of(context).colorMode() == ThemeMode.dark
//               ? Colors.black
//               : null,
//       body: _OTPViewBottomSheetWidget(
//         onVerify: onVerify,
//         resendOtp: resendOtp,
//         verificationReceiver: verificationReceiver,
//       ),
//     );
//   }
// }
//
// class _OTPViewBottomSheetWidget extends StatelessWidget {
//   const _OTPViewBottomSheetWidget({
//     Key? key,
//     required this.onVerify,
//     required this.resendOtp,
//     required this.verificationReceiver,
//   }) : super(key: key);
//   final ResendOtp resendOtp;
//   final VerifyOtp onVerify;
//   final String verificationReceiver;
//
//   @override
//   Widget build(BuildContext context) {
//     return OTPVerificationScreen(
//       length: 7,
//       verificationReceiver: verificationReceiver,
//       resendOtp: resendOtp,
//       onVerify: onVerify,
//     );
//   }
// }
