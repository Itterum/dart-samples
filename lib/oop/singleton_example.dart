enum LogLevel { info, debug, warning, error }

class Logger {
  static final _logger = Logger._internal();
  LogLevel _level = LogLevel.info;

  factory Logger() => _logger;

  Logger._internal();

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
