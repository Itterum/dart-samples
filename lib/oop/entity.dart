import 'package:uuid/uuid.dart';

abstract class Entity {
  final String id;

  Entity() : id = generateId();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  static String generateId() {
    return Uuid().v4().replaceAll('-', '').substring(1, 10).toString();
  }
}
