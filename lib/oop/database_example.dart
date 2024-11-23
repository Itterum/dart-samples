import 'package:dart_app/utils.dart';

class Entity {
  final String id;
  final Map<String, dynamic> fields;

  Entity({required this.fields}) : id = generateId();

  @override
  String toString() => 'Entity: {id: $id, fields: $fields}';
}

class CustomUser extends Entity {
  final String? name;
  final String email;
  final String password;

  CustomUser({this.name, required this.email, required this.password})
      : super(fields: {
          'name': name,
          'email': email,
          'password': password,
        });
}

abstract class AbstractDatabase<T extends Entity> {
  final Map<String, T> _entities = {};

  void add(T entity) {
    if (_entities.containsKey(entity.id)) {
      throw Exception('Entity with id ${entity.id} already exists');
    }
    _entities[entity.id] = entity;
  }

  void edit(String id, T entity) {
    if (!_entities.containsKey(id)) {
      throw Exception('Entity not found');
    }
    _entities[id] = entity;
  }

  void remove(String id) {
    if (!_entities.containsKey(id)) {
      throw Exception('Entity not found');
    }
    _entities.remove(id);
  }

  T getById(String id) {
    final entity = _entities[id];
    if (entity == null) {
      throw Exception('Entity not found');
    }
    return entity;
  }

  List<T> getAll() => _entities.values.toList();

  List<T> filter(bool Function(T entity) predicate) =>
      _entities.values.where(predicate).toList();
}

class Database<T extends Entity> extends AbstractDatabase<T> {}
