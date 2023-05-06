import 'package:example/infrastructure/local_datasource/post_local_datasource.dart';
import 'package:flutter_core/datasource/local_data_source/base_local_data_source.dart';
import 'package:flutter_core/type_defs.dart';

class ExampleLocalDataSource extends BaseLocalDataSource {
  static const DatabaseSchema _schema = [
    PostLocalDataSource.createTableQuery,
  ];
  static const String _databaseName = 'ExampleDb';
  static const int _version = 1;

  ExampleLocalDataSource({
    required super.logger,
  }) : super(
          databaseName: _databaseName,
          version: _version,
          databaseSchema: _schema,
        );
}
