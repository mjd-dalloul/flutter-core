import 'package:example/infrastructure/models/post.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';

abstract class IPostRepository {
  Future<DataModelWrapper<List<Post>>> getPosts(bool forceUpdate);
}
