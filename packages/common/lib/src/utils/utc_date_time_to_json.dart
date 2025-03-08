String? utcDateTimeToJson(DateTime? dateTime) {
  if (dateTime != null) {
    return dateTime.copyWith(isUtc: true).toIso8601String();
  }
  return null;
}
