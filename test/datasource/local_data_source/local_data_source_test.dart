import 'package:flutter_core/datasource/local_data_source/base_local_data_source.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';
import 'package:flutter_core/utils/failures/local_failures.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:sqflite/sqflite.dart';

import '../../core/models/test_model.dart';
import 'local_data_source_test.mocks.dart';

@GenerateMocks([Database])
void main() {
  final database = MockDatabase();
  TestModel testModel = const TestModel(id: 1, body: 'test');
  group('database exception', () {
    test('insert rows database exception', () async {
      when(
        database.insert(
          'test',
          testModel.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        ),
      ).thenThrow('test');
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.insertObjects(
        tableName: 'test',
        toMaps: [testModel.toJson, testModel.toJson, testModel.toJson],
      );
      expect(
          res,
          const DataModelWrapper<int>.localDataFailure(
              localFailure: LocalFailure.unknownError('test')));
    });

    test('delete rows database exception', () async {
      when(
        database.delete('test'),
      ).thenThrow('test');
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.deleteObject(
        tableName: 'test',
      );
      expect(
          res,
          const DataModelWrapper<int>.localDataFailure(
              localFailure: LocalFailure.unknownError('test')));
    });

    test('update rows database exception', () async {
      when(
        database.update(
          'test',
          testModel.toJson(),
        ),
      ).thenThrow('test');
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.updateObject(
        tableName: 'test',
        toMap: testModel.toJson,
      );
      expect(
          res,
          const DataModelWrapper<int>.localDataFailure(
              localFailure: LocalFailure.unknownError('test')));
    });
    test('get rows object from database exception', () async {
      when(
        database.query(
          'test',
        ),
      ).thenThrow('test');
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.getObject(
        tableName: 'test',
        deserializer: TestModel.fromJson,
      );
      expect(
          res,
          const DataModelWrapper<TestModel?>.localDataFailure(
              localFailure: LocalFailure.unknownError('test')));
    });
  });
  group('Insert rows into database', () {
    test('Inserting one item to database', () async {
      when(
        database.insert(
          'test',
          testModel.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        ),
      ).thenAnswer((realInvocation) async => 1);
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.insertObject(
        tableName: 'test',
        toMap: testModel.toJson,
      );
      expect(res, const DataModelWrapper.localData(data: 1));
    });
    test('Inserting List of items to database', () async {
      when(
        database.insert(
          'test',
          testModel.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        ),
      ).thenAnswer((realInvocation) async => 3);
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.insertObjects(
        tableName: 'test',
        toMaps: [testModel.toJson, testModel.toJson, testModel.toJson],
      );
      expect(res, const DataModelWrapper.localData(data: 9));
    });
  });
  group('Delete rows from database', () {
    test('delete rows database exception', () async {
      when(
        database.delete('test'),
      ).thenAnswer((_) async => 1);
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.deleteObject(
        tableName: 'test',
      );
      expect(res, const DataModelWrapper<int>.localData(data: 1));
    });
  });
  group('Update rows from database', () {
    test('update rows database', () async {
      when(
        database.update('test', testModel.toJson()),
      ).thenAnswer((_) async => 1);
      BaseLocalDataSource localDataSourceImpl =
          BaseLocalDataSource.fromDataBase(database: database);
      final res = await localDataSourceImpl.updateObject(
        tableName: 'test',
        toMap: testModel.toJson,
      );
      expect(res, const DataModelWrapper<int>.localData(data: 1));
    });
  });
}
