class DateTimeManager {
  late DateTime _now;
  final Duration timeZone;

  DateTimeManager({this.timeZone = const Duration(hours: 9)}) {
    _now = DateTime.now().toUtc().add(timeZone);
  }

  String getTime() {
    int hour = _now.hour;
    int minute = _now.minute;
    int second = _now.second;
    return '$hour:$minute:$second';
  }

  String getDate() {
    int year = _now.year;
    int month = _now.month;
    int day = _now.day;
    return '$year-$month-$day';
  }

  String formatTime() => "${getDate()}T${getTime()}";

}
