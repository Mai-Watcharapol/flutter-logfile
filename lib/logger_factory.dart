import 'date_time_manager.dart';
import 'logger.dart';

class LoggerFactory {
  int _count = 0;
  final DateTimeManager _now = DateTimeManager();

  static Logger getLogger(Type clazz) => Logger(clazz);

  String fmt() {
    var num = _count;
    _addCount();
    print("num: $num");
    //print("add: $");
    return "id=${_getCount()}, ${_now.formatTime()}";
  }

  void _addCount() => _count++;

  void _resetCount() => _count = 0;

  int _getCount() => _count;
}
