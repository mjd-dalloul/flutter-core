import 'package:flutter_core/type_defs.dart';

abstract class BaseLocalDataSource {
  Future<T> getObject<T>({
    required String tableName,
    required String databaseName,
    required MapDeserializer deserializer,
  });

  Future<T> deleteObject<T>({
    required String tableName,
    required String databaseName,
    String? whereCondition,
    List<dynamic>? args,
  });

  Future<T> updateObject<T>({
    required String tableName,
    required String databaseName,
    String? whereCondition,
    List<dynamic>? args,
  });

  Future<T> insertObject<T>({
    required String tableName,
    required String databaseName,
    required ToMap<T> toMap,
  });
}
