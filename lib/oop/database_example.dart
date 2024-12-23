import 'dart:convert';
import 'package:dart_app/oop/entity.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DatabaseService<E extends Entity> {
  late Database _db;
  final String tableName;
  final E Function(Map<String, dynamic>) fromMap;

  DatabaseService({
    required this.tableName,
    required this.fromMap,
  });

  Future<void> init(String dbName) async {
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;

    _db = await openDatabase(
      dbName,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS $tableName (
            id TEXT PRIMARY KEY,
            data TEXT NOT NULL
          )
        ''');
      },
    );
  }

  Future<void> insert(E entity) async {
    final data = {
      'id': entity.id,
      'data': jsonEncode(entity.toMap()),
    };

    await _db.insert(
      tableName,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<E?> getById(String id) async {
    final result = await _db.query(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isNotEmpty) {
      final entityData = result.first['data'] as String;
      return fromMap(jsonDecode(entityData));
    }
    return null;
  }

  Future<List<E>> getAll() async {
    final result = await _db.query(tableName);
    return result
        .map((map) => fromMap(jsonDecode(map['data'] as String)))
        .toList();
  }

  Future<void> delete(String id) async {
    await _db.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> update(E entity) async {
    final data = {
      'data': jsonEncode(entity.toMap()),
    };

    await _db.update(
      tableName,
      data,
      where: 'id = ?',
      whereArgs: [entity.id],
    );
  }

  Future<void> close() async => _db.close();

  Future<String> getAllAsJson() async {
    final result = await _db.query(tableName);
    final profiles = result
        .map((map) => fromMap(jsonDecode(map['data'] as String)))
        .toList();

    final jsonEncoder = JsonEncoder.withIndent('  ');
    
    return jsonEncoder
        .convert(profiles.map((profile) => profile.toMap()).toList());
  }
}
