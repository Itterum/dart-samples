import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'entity.freezed.dart';
part 'entity.g.dart';

@freezed
class Entity with _$Entity {
  const Entity._();

  factory Entity({
    @Default('') String id,
  }) = _Entity;

  factory Entity.create() => Entity(id: _generateId());

  factory Entity.fromJson(Map<String, dynamic> json) => _$EntityFromJson(json);

  static String _generateId() {
    return Uuid().v4().replaceAll('-', '').substring(1, 10).toString();
  }
}
