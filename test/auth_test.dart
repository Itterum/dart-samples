// import 'package:dart_app/oop/database_example.dart';
// import 'package:test/test.dart';
// import 'package:dart_app/oop/auth.dart';

// void main() {
//   group('Auth', () {
//     late Auth auth;
//     late Database<CustomUser> database;

//     setUp(() {
//       database = Database<CustomUser>();
//       auth = Auth(database);
//     });

//     test('User can sign up successfully', () async {
//       final user = await auth.signUp('test@example.com', 'password123');

//       expect(user, isNotNull);
//       expect(user?.email, 'test@example.com');
//       expect(user?.password, 'password123');
//       expect(auth.currentUser, isNotNull);
//     });

//     test('Sign up throws an exception if user already exists', () async {
//       await auth.signUp('test@example.com', 'password123');

//       expect(
//         () => auth.signUp('test@example.com', 'password123'),
//         throwsA(isA<Exception>().having(
//             (e) => e.toString(), 'message', contains('User already exists'))),
//       );
//     });

//     test('User can sign in with correct credentials', () async {
//       await auth.signUp('test@example.com', 'password123');

//       final user = await auth.signIn('test@example.com', 'password123');

//       expect(user, isNotNull);
//       expect(user?.email, 'test@example.com');
//       expect(auth.currentUser, isNotNull);
//     });

//     test('Sign in throws an exception with invalid email', () async {
//       await auth.signUp('test@example.com', 'password123');

//       expect(
//         () => auth.signIn('wrong@example.com', 'password123'),
//         throwsA(isA<Exception>().having((e) => e.toString(), 'message',
//             contains('Invalid email or password'))),
//       );
//     });

//     test('Sign in throws an exception with invalid password', () async {
//       await auth.signUp('test@example.com', 'password123');

//       expect(
//         () => auth.signIn('test@example.com', 'wrongpassword'),
//         throwsA(isA<Exception>().having((e) => e.toString(), 'message',
//             contains('Invalid email or password'))),
//       );
//     });

//     test('User can sign out successfully', () async {
//       await auth.signUp('test@example.com', 'password123');
//       await auth.signOut();

//       expect(auth.currentUser, isNull);
//     });

//     test('Sign out does not throw an error when no user is signed in',
//         () async {
//       await auth.signOut();

//       expect(auth.currentUser, isNull);
//     });
//   });
// }
