import 'package:dart_app/oop/database_example.dart';

class Auth {
  final AbstractDatabase<CustomUser> _userDatabase;
  CustomUser? _currentUser;

  CustomUser? get currentUser => _currentUser;

  Auth(this._userDatabase);

  Future<CustomUser?> signUp(String email, String password) async {
    if (_userDatabase.getAll().any((user) => user.email == email.trim())) {
      throw Exception('User already exists');
    }

    final user = CustomUser(email: email.trim(), password: password.trim());
    
    _userDatabase.add(user);
    _currentUser = user;

    return _currentUser;
  }

  Future<CustomUser?> signIn(String email, String password) async {
    final user = _userDatabase.getAll().firstWhere(
          (user) =>
              user.email == email.trim() && user.password == password.trim(),
          orElse: () => throw Exception('Invalid email or password'),
        );
    _currentUser = user;
    return _currentUser;
  }

  Future<void> signOut() async {
    _currentUser = null;
  }
}
