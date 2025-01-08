class Singleton {
  static final Singleton _instance = Singleton._internal();

  Singleton._internal();

  factory Singleton() => _instance;

  static Singleton get instance => _instance;

  void someBusinessLogic() {
    // ...
  }
}

void main() {
  final s1 = Singleton();
  final s2 = Singleton();

  if (s1 == s2) {
    print('Singleton works, both variables contain the same instance.');
  }

  s1.someBusinessLogic();
}
