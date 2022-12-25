import 'package:flutter_core/datasource/local_data_source/base_local_data_source.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BaseLocalDataSourceImpl implements BaseLocalDataSource {
  BaseLocalDataSourceImpl({
    required String databaseName,
    required int version,
    required DatabaseSchema databaseSchema,
  }) {
    databaseInitializer =
        initializeDatabase(databaseName, version, databaseSchema);
  }

  BaseLocalDataSourceImpl.fromDataBase({
    required Database database,
  }) {
    _database = database;
    databaseInitializer = Future.value();
  }

  late final Future<void> databaseInitializer;
  late final Database _database;

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
            await database.execute(createTableQuery);
          }
          return;
        },
        version: version,
      ).then((value) => _database = value);

  @override
  Future<DataModelWrapper<int>> deleteObject({
    required String tableName,
    SqlQuery? whereCondition,
  }) {
    final deleteQuery = whereCondition?.call();
    return _wrapWithTryAndCatch(
      () => _database.delete(
        tableName,
        where: deleteQuery?.item1,
        whereArgs: deleteQuery?.item2,
      ),
    );
  }

  @override
  Future<DataModelWrapper<int>> updateObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    SqlQuery? whereCondition,
  }) {
    final deleteQuery = whereCondition?.call();
    return _wrapWithTryAndCatch(() => _database.update(tableName, toMap.call(),
        where: deleteQuery?.item1, whereArgs: deleteQuery?.item2));
  }

  @override
  Future<DataModelWrapper<T?>> getObject<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
    SqlQuery? sqlQuery,
  }) {
    final String? whereStatement = sqlQuery?.call().item1;
    final List<dynamic>? whereArgs = sqlQuery?.call().item2;
    return _wrapWithTryAndCatch(() async {
      final List<Map<String, dynamic>> res = await _database.query(
        tableName,
        whereArgs: whereArgs,
        where: whereStatement,
      );
      if (res.isNotEmpty) {
        return deserializer.call(res.first);
      } else {
        return null;
      }
    });
  }

  @override
  Future<DataModelWrapper<List<T>>> getObjects<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
    SqlQuery? sqlQuery,
  }) async {
    final String? whereStatement = sqlQuery?.call().item1;
    final List<dynamic>? whereArgs = sqlQuery?.call().item2;
    return _wrapWithTryAndCatch(() async {
      final List<Map<String, dynamic>> res = await _database.query(
        tableName,
        whereArgs: whereArgs,
        where: whereStatement,
      );
      if (res.isNotEmpty) {
        return res.map((e) => deserializer.call(e)).toList();
      } else {
        return [];
      }
    });
  }

  @override
  Future<DataModelWrapper<int>> insertObjects<T>({
    required String tableName,
    required List<ToMap<T>> toMaps,
    ConflictAlgorithm? conflictAlgorithm,
  }) {
    return _wrapWithTryAndCatch(() async {
      int insertedRows = 0;
      for (var element in toMaps) {
        insertedRows += await _database.insert(
          tableName,
          element.call(),
          conflictAlgorithm: conflictAlgorithm ?? ConflictAlgorithm.replace,
        );
      }
      return insertedRows;
    });
  }

  @override
  Future<DataModelWrapper<int>> insertObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    ConflictAlgorithm? conflictAlgorithm,
  }) async =>
      _wrapWithTryAndCatch(() => _database.insert(
            tableName,
            toMap.call(),
            conflictAlgorithm: conflictAlgorithm ?? ConflictAlgorithm.replace,
          ));

  Future<DataModelWrapper<T>> _wrapWithTryAndCatch<T>(
      Future<T?> Function() databaseCall) async {
    try {
      return DataModelWrapper.localData(data: await databaseCall.call());
    } catch (e) {
      return DataModelWrapper.localDataFailure(
          localFailure: LocalFailure.unknownError(e));
    }
  }
}
