import 'package:flutter_test/flutter_test.dart';
import 'package:logfile/logger.dart';
import 'package:logfile/logger_factory.dart';


// void main() {
//   group('LoggerFactory', () {
//     test('should create a logger with the correct class name', () {
//
//       var logger = LoggerFactory.getLogger(MyClass);
//
//       var className = logger.getLogger();
//
//       // Assert
//       expect(className, 'MyClass');
//     });
//   });
// }


class MyClass {

  final Logger _LOG = LoggerFactory.getLogger(MyClass);

  MyClass(String msg) {
    _LOG.info("Hello: $msg");
  }

}

void main() {
  MyClass("log test 1");
}