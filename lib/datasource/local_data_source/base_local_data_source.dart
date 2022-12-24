import 'package:flutter_core/type_defs.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseLocalDataSource {

  Future<void> initializeDatabase(
    String databaseName,
    int version,
    DatabaseSchema databaseSchema,
  );

  Future<DataModelWrapper<T?>> getObject<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
    SqlQuery? sqlQuery,
  });

  Future<DataModelWrapper<List<T>>> getObjects<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
    SqlQuery? sqlQuery,
  });

  Future<DataModelWrapper<int>> deleteObject({
    required String tableName,
    SqlQuery? whereCondition,
  });

  Future<DataModelWrapper<int>> updateObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    SqlQuery? whereCondition,
  });

  Future<DataModelWrapper<int>> insertObjects<T>({
    required String tableName,
    required List<ToMap<T>> toMaps,
    ConflictAlgorithm? conflictAlgorithm,
  });

  Future<DataModelWrapper<int>> insertObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    ConflictAlgorithm? conflictAlgorithm,
  });
}

enum DatabaseMethods {
  INSERT,
  DELETE,
  UPDATE,
  SELECT,
}
