import 'package:dart_app/oop/singleton_example.dart';
import 'package:dart_app/oop/database_example.dart';
import 'package:dart_app/oop/auth.dart';

void main(List<String> arguments) async {
  var db = Database<User>();

  var user0 =
      User(name: 'test_', email: 'test_@test.com', password: 'dxEumGdlPObA');
  var user1 =
      User(name: 'test_', email: 'test_@test.com', password: 'JAzqTYwk');
  var user2 =
      User(name: 'test_', email: 'test_@test.com', password: 'iZTLJiKdK');

  db.add(user0);
  db.add(user1);
  db.add(user2);

  Logger().info(db.getAll().toString(), 'get all entities');

  final auth = Auth();

  try {
    final newUser = await auth.signUp('test@example.com', 'dxEumGdlPObA');
    Logger().info('User signed up: ${newUser?.email}', 'sign up');

    final loggedInUser = await auth.signIn('test@example.com', 'dxEumGdlPObA');
    Logger().info('User signed in: ${loggedInUser?.email}', 'sign in');

    await auth.signOut();
    Logger().info('User signed out', 'sign out');
  } catch (e) {
    Logger().error('Error: $e', 'sign up or sign in');
  }
}
