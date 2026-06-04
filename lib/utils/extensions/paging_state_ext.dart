import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

extension PagingStateExt<K, T> on PagingState<K?, T> {
  K? get nextPageNumber => (keys ?? []).lastOrNull;
}