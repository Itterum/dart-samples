// task 1
// Реализуйте класс, который будет использоваться для журналирования (записи логов) действий в приложении.
enum LogLevel { info, debug, warning, error }

class Logger {
  late LogLevel _level;
  DateTime date = DateTime.now();

  Logger();

  void log(LogLevel level, String message, String action) {
    _level = level;

    if (shouldLog(level)) {
      String? logMessage = formatMessage(level, message, action);
      print(logMessage);
    }
  }

  bool shouldLog(LogLevel level) {
    return level.index >= _level.index;
  }

  String formatMessage(LogLevel level, String message, String action) {
    String timestamp = DateTime.now().toIso8601String();
    return "[$timestamp] [${level.name.toUpperCase()}]: $message - $action";
  }

  void info(String message, String action) =>
      log(LogLevel.info, message, action);

  void debug(String message, String action) =>
      log(LogLevel.debug, message, action);

  void warning(String message, String action) =>
      log(LogLevel.warning, message, action);

  void error(String message, String action) =>
      log(LogLevel.error, message, action);
}
