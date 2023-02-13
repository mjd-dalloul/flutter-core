import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_core/utils/extensions/int_ext.dart';

mixin SearchMixin<S extends StatefulWidget> on State<S> {
  late final TextEditingController searchController;

  String get initialSearchValue => '';

  int get debounceMillisecondSeconds => 500;

  Timer? timer;

  String query = '';

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController(text: initialSearchValue);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      searchController.addListener(() {
        timer?.cancel();
        timer = Timer(
          debounceMillisecondSeconds.asMilliseconds,
          () {
            if (query == searchController.text) {
              return;
            }
            query = searchController.text;
            searchQuery(searchController.text);
          },
        );
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void searchQuery(String text);
}
