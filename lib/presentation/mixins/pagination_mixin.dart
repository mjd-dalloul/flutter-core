import 'package:flutter/cupertino.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

mixin Pagination<S extends StatefulWidget, M> on State<S> {
  PagingController<int, M> get pageController;

  void onPageRequested(int pageNumber);

  @override
  void initState() {
    super.initState();
    pageController.addPageRequestListener((page) => onPageRequested(page));
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
}
