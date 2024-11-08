// Реализуйте класс для создания различных форматов документов (например, PDF, HTML, JSON).
import 'dart:io';

class Docs {
  late String filePath;
  late String content;

  void createDoc(String filePath, String content) {
    var file = File(filePath);
    file.openWrite();
    file.writeAsStringSync(content);
    file.flush();
    file.close();
    print(file);
  }

  void createPDF(String filePath, String content) {
    createDoc(filePath, content);
    print("PDF document created at $filePath");
  }

  void createJSON() {
    // Код для создания JSON документа
    print("JSON document created at $filePath");
  }

  void createHTML() {
    // Код для создания HTML документа
    print("HTML document created at $filePath");
  }
}

/**
 * "taskFilter": "IFS(
 * $marketId=\"minicen.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"stolichki.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"b-apteka.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"ozon.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"maksavit.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"ozerki.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"apteka-april.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"apteka.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"vitaexpress.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"zdorov.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"rigla.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"planetazdorovo.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"monastirev.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"eapteka.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"gorzdrav.org\";$35de13a326=\"Биннофарм\";
 * $marketId=\"farmlend.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"zhivika.ru\";$35de13a326=\"Биннофарм\";
 * $marketId=\"aptekiplus.ru\";$35de13a326=\"Биннофарм\";
 * AND(EXISTS(@marketId); OR(@marketId = \"stoletov.ru\"; @marketId = \"аптека25.рф\"; @marketId = \"366.ru\")); FALSE(); 
 * $98e034cb6e=0; TRUE())"
 */