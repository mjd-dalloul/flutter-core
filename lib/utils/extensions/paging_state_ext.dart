import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension PagingStateExt<T> on PagingState<int, T> {
  int get nextPageNumber => (keys ?? []).length;
}
