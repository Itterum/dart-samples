abstract class AbstractEntity<T> {
  T get fields;
  Map<String, String> get collected;
}

class BaseEntity<T> implements AbstractEntity<T> {
  @override
  final T fields;

  @override
  final Map<String, String> collected;

  BaseEntity(this.fields)
      : collected = {
          'date': BaseEntity.formatDate(DateTime.now()),
        };

  Map<String, dynamic> getInfo() {
    return {
      'fields': fields,
      'collected': collected,
    };
  }

  static String formatDate(DateTime date, {String timezone = 'Europe/Moscow'}) {
    final formattedDate = date.toUtc().toString();
    return formattedDate.replaceAll('-', '/').replaceFirst(' ', 'T');
  }
}
