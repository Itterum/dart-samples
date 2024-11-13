import 'package:dart_app/oop/logger_example.dart';
import 'package:dart_app/oop/create_docs.dart';

void main(List<String> arguments) {
  var logger = Logger();

  logger.info('test msg info', 'test action info');
  logger.debug('test msg debug', 'test action debug');
  logger.warning('test msg warning', 'test action warning');
  logger.error('test msg error', 'test action error');

  String content = "Пример содержания документа";

  FileManager pdfCreator = FileFactory.createFile('pdf');
  print(pdfCreator.create(content));

  FileManager htmlCreator = FileFactory.createFile('html');
  print(htmlCreator.create(content));

  FileManager jsonCreator = FileFactory.createFile('json');
  print(jsonCreator.create(content));
}
