import 'package:logger/logger.dart';

class TLoggerHelper{
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug
  );

  static debug(String message){
    _logger.d(message);
  }

  static info(String message){
    _logger.i(message);
  }

  static warning(String message){
    _logger.w(message);
  }

  static error(String message, [dynamic error]){
    _logger.e(message, error: error, stackTrace: StackTrace.current);
  }
}