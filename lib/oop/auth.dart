import 'package:dart_app/oop/database_example.dart';

class Auth {
  final Map<String, String> _users = {};
  User? _currentUser;

  User? get currentUser => _currentUser;

  Future<User?> signUp(String email, String password) async {
    if (_users.containsKey(email)) {
      throw Exception('User already exists');
    }

    _users[email.trim()] = password.trim();
    _currentUser = User(email: email.trim(), password: password.trim());

    return _currentUser;
  }

  Future<User?> signIn(String email, String password) async {
    final storedPassword = _users[email.trim()];

    if (storedPassword == null || storedPassword != password.trim()) {
      throw Exception('Invalid email or password');
    }

    _currentUser = User(email: email.trim(), password: password.trim());

    return _currentUser;
  }

  Future<void> signOut() async {
    _currentUser = null;
  }
}
