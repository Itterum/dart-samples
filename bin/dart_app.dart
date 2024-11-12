import 'package:dart_app/oop/logger_example.dart';
import 'package:dart_app/oop/create_docs.dart';

void main(List<String> arguments) {
  var logger = Logger();

  logger.info('test msg info', 'test action info');
  logger.debug('test msg debug', 'test action debug');
  logger.warning('test msg warning', 'test action warning');
  logger.error('test msg error', 'test action error');

  var manager = FileManager('../docs');
  manager.createJSON('test.json', '{"test": "test"}');
}
