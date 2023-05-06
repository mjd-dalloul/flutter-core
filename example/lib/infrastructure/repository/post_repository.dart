import 'package:example/domain/repository/i_post_repository.dart';
import 'package:example/infrastructure/local_datasource/post_local_datasource.dart';
import 'package:example/infrastructure/models/post.dart';
import 'package:example/infrastructure/remote_datasource/post_remote_datasource.dart';
import 'package:flutter_core/repository/base_repostiroy.dart';
import 'package:flutter_core/utils/data_model_wrapper.dart';

class PostRepository extends BaseRepository implements IPostRepository {
  PostRepository(
    super.logger,
    this.remoteDataSource,
    this.localDataSource,
  );

  final PostRemoteDataSource remoteDataSource;
  final PostLocalDataSource localDataSource;

  @override
  Future<DataModelWrapper<List<Post>>> getPosts(bool forceUpdate) =>
      requestData(
        remoteCall: () => remoteDataSource.getPosts(),
        forceUpdate: forceUpdate,
        localCall: localDataSource.getPosts,
        saveRemoteDataFunction: (posts) => localDataSource.insertPosts(posts),
      );
}
