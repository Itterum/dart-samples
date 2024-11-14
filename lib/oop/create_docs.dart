// Реализуйте класс для создания различных форматов документов 
// (например, PDF, HTML, JSON).

abstract class FileManager {
  String create(String content);
}

class PdfFileCreator extends FileManager {
  @override
  String create(String content) {
    return "PDF File: $content";
  }
}

class HtmlFileCreator extends FileManager {
  @override
  String create(String content) {
    return "<html><body><p>$content</p></body></html>";
  }
}

class JsonFileCreator extends FileManager {
  @override
  String create(String content) {
    return '{"File": "$content"}';
  }
}

class FileFactory {
  static FileManager createFile(String format) {
    switch (format.toLowerCase()) {
      case 'pdf':
        return PdfFileCreator();
      case 'html':
        return HtmlFileCreator();
      case 'json':
        return JsonFileCreator();
      default:
        throw ArgumentError('Unsupported format: $format');
    }
  }
}

/**
 * 
 * use example
 * 
  String content = "Пример содержания документа";

  FileManager pdfCreator = FileFactory.createFile('pdf');
  print(pdfCreator.create(content));

  FileManager htmlCreator = FileFactory.createFile('html');
  print(htmlCreator.create(content));

  FileManager jsonCreator = FileFactory.createFile('json');
  print(jsonCreator.create(content));
 */
