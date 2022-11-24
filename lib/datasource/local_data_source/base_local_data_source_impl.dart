import 'package:flutter_core/datasource/local_data_source/base_local_data_source.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BaseLocalDataSourceImpl implements BaseLocalDataSource {
  BaseLocalDataSourceImpl({
    required this.databaseName,
    required int version,
    required DatabaseSchema databaseSchema,
  }) {
    databaseInitializer =
        initializeDatabase(databaseName, version, databaseSchema);
  }

  late final Future<void> databaseInitializer;
  late final Database _database;
  final String databaseName;

  @override
  String get _databaseName => databaseName;

  @override
  Future<void> initializeDatabase(String databaseName, int version,
          DatabaseSchema databaseSchema) async =>
      openDatabase(
        // Set the path to the database. Note: Using the `join` function from the
        // `path` package is best practice to ensure the path is correctly
        // constructed for each platform.
        join(await getDatabasesPath(), databaseName),
        onCreate: (database, version) async {
          for (final createTableQuery in databaseSchema) {
            final res = createTableQuery.call();
            await database.execute(res.item1, res.item2);
          }
          return;
        },
        version: version,
      ).then((value) => _database = value);

  @override
  Future<int> deleteObject({
    required String tableName,
    SqlQuery? whereCondition,
  }) {
    final deleteQuery = whereCondition?.call();
    return _database.delete(tableName,
        where: deleteQuery?.item1, whereArgs: deleteQuery?.item2);
  }

  @override
  Future<int> updateObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    SqlQuery? whereCondition,
  }) {
    final deleteQuery = whereCondition?.call();
    return _database.update(tableName, toMap.call(),
        where: deleteQuery?.item1, whereArgs: deleteQuery?.item2);
  }

  @override
  Future<T?> getObject<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
  }) async {
    final List<Map<String, dynamic>> res = await _database.query(tableName);
    if (res.isNotEmpty) {
      return deserializer.call(res.first);
    } else {
      return null;
    }
  }

  @override
  Future<List<T>> getObjects<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
  }) async {
    final List<Map<String, dynamic>> res = await _database.query(tableName);
    if (res.isNotEmpty) {
      return res.map((e) => deserializer.call(e)).toList();
    } else {
      return [];
    }
  }

  @override
  Future<int> insertObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    ConflictAlgorithm? conflictAlgorithm,
  }) =>
      _database.insert(
        tableName,
        toMap.call(),
        conflictAlgorithm: conflictAlgorithm,
      );
}
