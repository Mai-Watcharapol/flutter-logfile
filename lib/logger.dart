import 'package:logfile/logger_factory.dart';

class Logger extends LoggerFactory {

  final Type _clazz;

  Logger(this._clazz);

  String getLogger() => _clazz.toString();

  void info(String msg) {
    print("${fmt()} ${getLogger()} INFO - $msg");
  }

}
