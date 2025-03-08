class Validator {
  static bool isValidRegex(String value, String pattern) {
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }

  static bool isValidKuwaitiMobileNumber(String value) {
    // Kuwaiti mobile number regex pattern
    String regex = r'^[5-9]\d{7}$';
    return Validator.isValidRegex(value, regex);
  }

  static bool isValidKuwaitiCivilID(String id) {
    final regex = RegExp(r'^\d{8}\d{3}$');
    if (!regex.hasMatch(id)) return false;

    int checkDigit = Validator.calculateCheckDigit(id);
    if (int.parse(id.substring(7, 8)) != checkDigit) return false;

    return true;
  }

  static bool checkKuwaitiCivilIDFormat(String civilId) =>
      (RegExp(r'^[0-9]{12}$').hasMatch(civilId));

  static int calculateCheckDigit(String id) {
    int sum = 0;
    for (int i = 0; i < 7; i++) {
      sum += int.parse(id.substring(i, i + 1));
    }
    return (sum * 1 + sum * 2 + sum * 3 + sum * 4 + sum * 5 + sum * 6) % 10;
  }

}
