import 'package:logfile/logger_factory.dart';

class Logger extends LoggerFactory {

  final Type _clazz;

  Logger(this._clazz);

  String getLogger() => _clazz.toString();

  void info(String msg) {
    print("${fmt()} ${getLogger()} INFO - $msg");
  }

}


enum Color {
  red("แดง"),
  green("เขียว"),
  blue("ฟ้า");

  final String hexValue;

  const Color(this.hexValue);
}

void main() {
  Color favoriteColor = Color.blue;
  print('color name: ${favoriteColor.hexValue}');
}
