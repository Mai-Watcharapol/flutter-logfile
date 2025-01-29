import 'logger.dart';

class LoggerFactory {

  late DateTime _now;

  LoggerFactory() {
    _now = DateTime.now();
  }

  static Logger getLogger(Type clazz) => Logger(clazz);

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

  String fmt() => "${getDate()}T${getTime()}";

}
