class KIBInvestEndPoints {
  static const String _KIBInvestPrefix = "/KIBInvest";
  static const String otpEndPoint = "$_KIBInvestPrefix/otp";

  // ******************** Lookups ********************
  static const String _lookupsPrefix = "$_KIBInvestPrefix/lookups";
  static const String transferReasonsEndPoint =
      "$_lookupsPrefix/country-trans/transfer-reasons";

  static const String registerDeviceFCMTokenEndPoint =
      '/notification/notifications/devices';
}
