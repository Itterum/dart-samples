// task 1
// Реализуйте класс, который будет использоваться для журналирования (записи логов) действий в приложении.
enum LogLevel { info, debug, warning, error }

class Logger {
  late LogLevel _level;
  DateTime date = DateTime.now();

  Logger();

  bool _shouldLog(LogLevel level) {
    return level.index >= _level.index;
  }

  String _formatMessage(LogLevel level, String message, String action) {
    String timestamp = DateTime.now().toIso8601String();
    return "[$timestamp] [${level.name.toUpperCase()}]: $message - $action";
  }

  void _log(LogLevel level, String message, String action) {
    _level = level;

    if (_shouldLog(level)) {
      String? logMessage = _formatMessage(level, message, action);
      print(logMessage);
    }
  }

  void info(String message, String action) =>
      _log(LogLevel.info, message, action);

  void debug(String message, String action) =>
      _log(LogLevel.debug, message, action);

  void warning(String message, String action) =>
      _log(LogLevel.warning, message, action);

  void error(String message, String action) =>
      _log(LogLevel.error, message, action);
}

/**
 * 
 * use example
 * 
  var logger = Logger();

  logger.info('test msg info', 'test action info');
  logger.debug('test msg debug', 'test action debug');
  logger.warning('test msg warning', 'test action warning');
  logger.error('test msg error', 'test action error');
 */
