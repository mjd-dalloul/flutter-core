import 'package:example/application/post_bloc/post_bloc.dart';
import 'package:example/infrastructure/models/post.dart';
import 'package:example/presentation/pages/example_base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/presentation/mixins/bloc_provider_mixin.dart';
import 'package:flutter_core/presentation/mixins/context_callback_mixin.dart';
import 'package:flutter_core/presentation/widgets/base_bloc_page.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends BaseBlocGetItPage<PostPage, PostBloc>
    with
        ContextCallbackMixin<PostPage, PostBloc>,
        BlocProviderMixin<PostPage, PostBloc> {
  @override
  void initState() {
    super.initState();
    bloc.add(const PostEvent.postRequested(true));
  }

  @override
  bool get autoDisposeForHelperBloc => true;

  @override
  PostBloc get baseBloc => bloc;

  @override
  bool get autoBlocDispose => true;

  @override
  PostBloc get provider => bloc;

  @override
  Widget buildChild(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: const PostsList(),
    );
  }
}

class PostsList extends StatefulWidget {
  const PostsList({
    Key? key,
  }) : super(key: key);

  @override
  State<PostsList> createState() => _PostsListState();
}

class _PostsListState extends ExampleBaseState<PostsList, PostBloc> {
  @override
  Widget buildChild(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        bloc.add(const PostEvent.postRequested(false));
      },
      child: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) => ListView.separated(
          itemBuilder: (context, index) => PostTile(
            post: state.posts[index],
          ),
          separatorBuilder: (_, __) => const SizedBox(
            height: 8.0,
          ),
          itemCount: state.posts.length,
        ),
      ),
    );
  }

  @override
  bool get autoDispose => false;
}

class PostTile extends StatelessWidget {
  const PostTile({
    Key? key,
    required this.post,
  }) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.postTitle),
      subtitle: Text(post.postBody),
      isThreeLine: true,
    );
  }
}
