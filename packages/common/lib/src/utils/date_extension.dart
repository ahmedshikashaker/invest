import 'package:common_dependencies/common_dependencies.dart';
// import 'package:hijri/hijri_calendar.dart';
import 'package:kib_core/kib_core.dart';

extension DateTimeFormat on DateTime {
  String get formatDate => DateFormat('d MMM y', 'en').format(toLocal());

  String get formatMonthDate => DateFormat('MMMM y', 'en').format(toLocal());

  String get formatDateAdaptive => AppDateFormatter(toLocal()).ddMMMyyy();

  String get formatMonthChart => DateFormat('MMM', 'en').format(toLocal());

  String get formatFullMonth => DateFormat('MMMM', 'en').format(toLocal());
  String get formatWithHours => DateFormat('hh:mm a', 'en').format(toLocal());

  String get formatMonthYearChar =>
      DateFormat('MMMM y', 'en').format(toLocal());

  String get localizedHourMinuteFormat => AppDateFormatter(this).hhmma();

  String get dmmy => DateFormat('d MMM y', 'en_US').format(toLocal());
  String get formatAPIDate => DateFormat('d MMM y', 'en_US').format(toLocal());

  String get formatCardDate => DateFormat('MM/yy', 'en').format(toLocal());

  String get mdy => DateFormat('MM/dd/yyyy', 'en').format(toLocal());

  String get dmy => DateFormat('dd/MM/yyyy', 'en').format(toLocal());

  String get monthDayYear => DateFormat('MMMddyyyy', 'en').format(toLocal());

  String get hm => DateFormat(DateFormat.HOUR_MINUTE, 'en').format(toLocal());

  String get dayAndHour => DateFormat('Hm', 'en').format(toLocal());

  String get gregorianDate =>
      DateFormat('E, d MMM yyyy HH:mm').format(toLocal());

  String get gregorianDateWithoutTime =>
      DateFormat('EEEE, dd MMM yyyy').format(toLocal());

  String get complaintDateFormat =>
      DateFormat('MMM dd, yyyy HH:mm aaa', 'en').format(toLocal());

  // String get hijriDate =>
  //     HijriCalendar.fromDate(toLocal()).toFormat('MMMM dd, yyyy');
  //
  // String get hijriFullDate => HijriCalendar.fromDate(toLocal()).fullDate();

  DateTime beforeOneYear() => DateTime(year - 1, month, day);

  DateTime beforeNYear(int n) => DateTime(year - n, month, day);

  DateTime afterOneYear() => DateTime(year + 1, month, day);

  DateTime afterNYear(int n) => DateTime(year + n, month, day);
}

extension DateTimeParsing on DateTime {
  /// parse [time] in "hh:mm" format.
  static DateTime tryParseTimeHM(String time) {
    final hm = time.split(':');
    int h = int.parse(hm[0]);
    int m = int.parse(hm[1]);
    return (DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, h, m));
  }

  static DateTime tryCalculateNextPrayer({
    required DateTime nowTime,
    required String timePrayer,
  }) {
    final hm = timePrayer.split(':');
    int h = int.parse(hm.first);
    int m = int.parse(hm.last);

    DateTime prayerTiming = DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day, h, m);
    DateTime durationTime = prayerTiming.subtract(Duration(
      hours: nowTime.hour,
      minutes: nowTime.minute,
    ));

    return durationTime;
  }

  String resolveTimeDifference({bool? shouldShowInHours = false}) {
    final Duration difference = this.difference(DateTime.now());
    if (difference.isNegative) return '0.00';
    final int hours = difference.inHours.remainder(60);
    final int minutes = difference.inMinutes.remainder(60);
    final int seconds = difference.inSeconds.remainder(60);
    return shouldShowInHours == true
        ? '${hours.toString().padLeft(1, '0')}:${minutes.toString().padLeft(1, '0')}:${seconds.toString().padLeft(2, '0')}'
        : '${minutes.toString().padLeft(1, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}

final monthAbbreviations = {
  'Jan': 1,
  'Feb': 2,
  'Mar': 3,
  'March': 3,
  'Apr': 4,
  'April': 4,
  'May': 5,
  'Jun': 6,
  'Jul': 7,
  'Aug': 8,
  'Sep': 9,
  'Oct': 10,
  'Nov': 11,
  'Dec': 12,
};

extension DateTimeModifying on DateTime {
  DateTime clone({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    bool? isUtc = false,
  }) {
    if (isUtc ?? this.isUtc) {
      return DateTime.utc(
        year ?? this.year,
        month ?? this.month,
        day ?? this.day,
        hour ?? this.hour,
        minute ?? this.minute,
        second ?? this.second,
        millisecond ?? this.millisecond,
      );
    }
    return DateTime(
      year ?? this.year,
      month ?? this.month,
      day ?? this.day,
      hour ?? this.hour,
      minute ?? this.minute,
      second ?? this.second,
      millisecond ?? this.millisecond,
    );
  }
}

extension DateTimeAdds on DateTime {
  DateTime get firstDateOfMonth => DateTime(year, month, 1);

  DateTime get lastDateOfMonth => DateTime(year, month + 1, 0);
}
