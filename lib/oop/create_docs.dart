// Реализуйте класс для создания различных форматов документов (например, PDF, HTML, JSON).
import 'dart:io';

class FileManager {
  late Directory directory;

  FileManager(String path) {
    directory = Directory(path);
    directory.create();
  }

  void createDoc(String filePath, String content) {
    var file = File(filePath);
    var sink = file.openWrite();
    sink.write(content);
    sink.flush();
    sink.close();
  }

  void createPDF(String filePath, String content) {
    createDoc('$directory/$filePath', content);
    print("PDF document created at $filePath");
  }

  void createJSON(String filePath, String content) {
    createDoc('$directory/$filePath', content);
    print("JSON document created at $filePath");
  }

  void createHTML(String filePath, String content) {
    createDoc('$directory/$filePath', content);
    print("HTML document created at $filePath");
  }
}
