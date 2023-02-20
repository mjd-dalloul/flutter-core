import 'package:flutter_core/datasource/local_data_source/i_base_local_data_source.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:logger/logger.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class BaseLocalDataSource implements IBaseLocalDataSource {
  BaseLocalDataSource({
    required String databaseName,
    required int version,
    required DatabaseSchema databaseSchema,
    required this.logger,
  }) {
    databaseInitializer =
        initializeDatabase(databaseName, version, databaseSchema);
  }

  /// create [BaseLocalDataSource] with custom database object.
  BaseLocalDataSource.fromDataBase({
    required Database database,
    required this.logger,
  }) {
    _database = database;
    databaseInitializer = Future.value();
  }

  /// future for initializing database
  late final Future<void> databaseInitializer;
  late final Database _database;
  final Logger logger;

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

  ///delete object from database
  ///[whereCondition] Tuple2<String, List<dynamic>?>
  /// item1 is the where statement,
  /// item2 is the args of where statement.
  /// ex: item1 = 'columnId = ?'
  /// item2 = [10]
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

  ///update object from database
  ///[toMap] Map<String, dynamic> Function() toJson object
  ///[whereCondition] Tuple2<String, List<dynamic>?>
  /// item1 is the where statement,
  /// item2 is the args of where statement.
  /// ex: item1 = 'columnId = ?'
  /// item2 = [10]
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

  /// get object from database
  /// [deserializer] T Function(Map<String, dynamic>); fromJson
  /// [sqlQuery] Tuple2<String, List<dynamic>?>
  /// item1 is the where statement,
  /// item2 is the args of where statement.
  /// ex: item1 = 'columnId = ?'
  /// item2 = [10]
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

  /// get objects from database
  /// [deserializer] T Function(Map<String, dynamic>); fromJson
  /// [sqlQuery] Tuple2<String, List<dynamic>?>
  /// item1 is the where statement,
  /// item2 is the args of where statement.
  /// ex: item1 = 'columnId = ?'
  /// item2 = [10]
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

  /// insert objects in database
  /// [toMaps] List of Map<String, dynamic> Function() toJson
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

  /// insert object in database
  /// [toMaps] Map<String, dynamic> Function() toJson
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
      logger.e('Error happened in base local data source ', e);
      return DataModelWrapper.localDataFailure(
          localFailure: LocalFailure.unknownError(e));
    }
  }
}
