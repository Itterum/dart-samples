abstract class Cache<T> {
  T? getByKey(String key);
  void setByKey(String key, T value);
}

class StringCache implements Cache<String> {
  final Map<String, String> _cache = {};

  @override
  String? getByKey(String key) => _cache[key];

  @override
  void setByKey(String key, String value) {
    _cache[key] = value;
  }
}

class IntCache implements Cache<int> {
  final Map<String, int> _cache = {};

  @override
  int? getByKey(String key) => _cache[key];

  @override
  void setByKey(String key, int value) {
    _cache[key] = value;
  }
}

void main() {
  final stringCache = StringCache();
  stringCache.setByKey('name', 'John Doe');
  print(stringCache.getByKey('name'));

  final intCache = IntCache();
  intCache.setByKey('age', 30);
  print(intCache.getByKey('age'));
}
