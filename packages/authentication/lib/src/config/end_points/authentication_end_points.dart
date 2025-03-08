class AuthenticationEndpoints {
  // https://kib-invest.dev.kibkw.digital/api/kib-invest

  static const _kibInvest = "/kib-invest";
  static const _auth = "$_kibInvest/auth";

  static const String requestVerifyEmail = '$_auth/otp/email/send';
  static const String verifyEmail = '$_auth/otp/email/verify';

  static const String requestVerifyMobileNumber = '$_auth/otp/mobile/send';
  static const String verifyMobileNumber = '$_auth/otp/mobile/verify';

  static const String registerUser = '$_auth/register';

  static const String loginEndPoint = '$_auth/login';

  static const String initPaciPath = '$_kibInvest/profile/paci/initiate';
  static const String getPaciInfoPath = '$_kibInvest/profile/paci/info';
  static const String forgetPasswordInitEndPoint =
      '$_kibInvest/auth/forgot-password/init';
  static const String forgetPasswordVerifyEndPoint =
      '$_kibInvest/auth/forgot-password/verify';
  static const String forgetPasswordResetEndPoint =
      '$_kibInvest/auth/forgot-password/reset';
}
