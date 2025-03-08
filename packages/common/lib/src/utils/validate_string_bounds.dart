bool validateStringIsBetweenBounds(String value, {int? min, int? max}) {
  if (min != null && value.length < min) return false;

  if (max != null && value.length > max) return false;

  return true;
}
