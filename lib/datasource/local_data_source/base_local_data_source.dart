import 'package:flutter_core/type_defs.dart';
import 'package:sqflite/sqflite.dart';

abstract class BaseLocalDataSource {
  String get _databaseName;

  Future<void> initializeDatabase(
    String databaseName,
    int version,
    DatabaseSchema databaseSchema,
  );

  Future<T?> getObject<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
  });

  Future<List<T>> getObjects<T>({
    required String tableName,
    required MapDeserializer<T> deserializer,
  });

  Future<int> deleteObject({
    required String tableName,
    SqlQuery? whereCondition,
  });

  Future<int> updateObject<T>({
    required String tableName,
    required ToMap<T> toMap,
    SqlQuery? whereCondition,
  });

  Future<int> insertObject<T>({
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
