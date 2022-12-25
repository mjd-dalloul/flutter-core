import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_core/utils/extensions/int_ext.dart';

mixin SearchMixin<S extends StatefulWidget> on State<S> {
  late final TextEditingController searchController;

  String get initialSearchValue => '';

  int get debounceMillisecondSeconds => 500;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController(text: initialSearchValue);
    searchController.addListener(() {
      timer?.cancel();
      timer = Timer(
        debounceMillisecondSeconds.asMilliseconds,
            () {
          searchQuery(searchController.text);
        },
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  void searchQuery(String text);
}
