import 'package:dart_app/oop/singleton_example.dart';
import 'package:dart_app/oop/database_example.dart';

class User extends Entity {
  final String name;
  final String email;

  User(this.name, this.email)
      : super(
          fields: {
            'name': name,
            'email': email,
          },
        );
}

void main(List<String> arguments) {
  var db = Database<User>();

  var user0 = User('test_', 'test_@test.com');
  var user1 = User('test_', 'test_@test.com');
  var user2 = User('test_', 'test_@test.com');

  db.add(user0);
  db.add(user1);
  db.add(user2);

  Logger().info(db.getAll().toString(), 'get all entities');
}
