import 'package:flutter/cupertino.dart';
import 'package:flutter_core/utils/extensions/paging_state_ext.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin Pagination<S extends StatefulWidget, M, K> on State<S> {
  PagingState<K, M> get pagingState;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void fetchPage() {
    fetchNextPage(pagingState.nextPageNumber);
  }

  void fetchNextPage(K? pageKey);
}
