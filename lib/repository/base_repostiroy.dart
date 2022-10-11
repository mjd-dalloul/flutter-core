import 'package:flutter_core/datasource/remote_data_source/base_remote_data_source_impl.dart';

abstract class BaseRepository {
  const BaseRepository(this.baseRemoteDataSource);

  final BaseRemoteDataSourceImpl baseRemoteDataSource;
}
