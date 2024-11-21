import 'package:dart_app/utils.dart';

class Entity {
  final String id;
  final Map<String, dynamic> fields;

  Entity({required this.fields}) : id = generateId();

  @override
  String toString() => 'Entity: {id: $id, filed: $fields}';
}

class User extends Entity {
  final String? name;
  final String email;
  final String password;

  User({this.name, required this.email, required this.password})
      : super(
          fields: {
            'name': name,
            'email': email,
            'password': password,
          },
        );
}

abstract class AbstractDatabase<T extends Entity> {
  final List<T> _entities = [];

  void add(T entity) {
    _entities.add(entity);
  }

  void edit(String id, T entity) {
    for (int i = 0; i < _entities.length; i++) {
      if (_entities[i].id == id) {
        _entities[i] = entity;
      }
    }
  }

  void remove(String id) {
    for (int i = 0; i < _entities.length; i++) {
      if (_entities[i].id == id) {
        _entities.removeAt(i);
      }
    }
  }

  T getById(String id) {
    for (int i = 0; i < _entities.length; i++) {
      if (_entities[i].id == id) {
        return _entities[i];
      }
    }
    throw Exception('Entity not found');
  }

  List<T> getAll() {
    return _entities;
  }
}

class Database<T extends Entity> extends AbstractDatabase<T> {}
