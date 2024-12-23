// import 'package:dart_app/oop/database_example.dart';

// import 'package:supabase_flutter/supabase_flutter.dart';

// class Auth {
//   Future<void> initialize() async {
//     await Supabase.initialize(
//       url: '',
//       anonKey:
//           '',
//     );
//   }

//   final Map<String, String> _users = {};
//   CustomUser? _currentUser;

//   CustomUser? get currentUser => _currentUser;

//   Future<CustomUser?> signUp(String email, String password) async {
//     if (_users.containsKey(email)) {
//       throw Exception('User already exists');
//     }

//     _users[email.trim()] = password.trim();
//     _currentUser = CustomUser(email: email.trim(), password: password.trim());

//     return _currentUser;
//   }

//   Future<CustomUser?> signIn(String email, String password) async {
//     final storedPassword = _users[email.trim()];

//     if (storedPassword == null || storedPassword != password.trim()) {
//       throw Exception('Invalid email or password');
//     }

//     _currentUser = CustomUser(email: email.trim(), password: password.trim());

//     return _currentUser;
//   }

//   Future<void> signOut() async {
//     _currentUser = null;
//   }
// }
