import 'package:logger/logger.dart';

//PARA IMPRIMIR MENSAJES EN LA CONSOLA:
class CLoggerHelper {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    // Customize the log levels based on your needs
    level: Level.debug,
  );

//DEBUG MESSAGE:
  static void debug(String message) {
    _logger.d(message);
  }

//INFO MESSAGE:
  static void info(String message) {
    _logger.i(message);
  }

//WARNING MESSAGE:
  static void warning(String message) {
    _logger.w(message);
  }

//ERROR MESSAGE:
  static void error(String message, [dynamic error]) {
    _logger.e(message, error: error,  stackTrace: StackTrace.current);
  }
}