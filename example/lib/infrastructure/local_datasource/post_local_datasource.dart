import 'package:example/infrastructure/example_local_datasource.dart';
import 'package:example/infrastructure/models/post.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';

class PostLocalDataSource extends ExampleLocalDataSource {
  static const String createTableQuery =
      'CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, userId INTEGER, title TEXT, body TEXT)';
  static const String _tableName = 'POST';

  PostLocalDataSource({required super.logger});

  Future<DataModelWrapper<int>> insertPosts(List<Post> posts) => insertObjects(
      tableName: _tableName,
      toMaps: posts.map((e) => () => e.toJson()).toList());

  Future<DataModelWrapper<List<Post>>> getPosts() =>
      getObjects(tableName: _tableName, deserializer: Post.fromJson);
}
