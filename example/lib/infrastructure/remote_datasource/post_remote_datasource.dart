import 'package:example/infrastructure/example_remote_datasource.dart';
import 'package:example/infrastructure/models/post.dart';
import 'package:flutter_core/constant.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';

class PostRemoteDataSource extends ExampleRemoteDataSource {
  PostRemoteDataSource(super.dio, super.logger);

  static const String _getPosts = 'posts';

  Future<DataModelWrapper<List<Post>>> getPosts() => request(
        requestType: HttpRequestTypes.GET,
        endPoint: _getPosts,
        deserializer: Post.listOfPostFromJson,
      );
}
