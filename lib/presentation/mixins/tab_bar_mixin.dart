import 'dart:math';

import 'package:flutter/material.dart';

mixin TabBarMixin<T extends StatefulWidget> on State<T> {
  late final TabController tabController;

  TickerProvider get vsync;

  int get length;

  int get initialIndex => 0;

  int get prevIndex => tabController.previousIndex;

  int get currentTab => tabController.index;

  bool get isChangingTabs => tabController.indexIsChanging;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: length,
      vsync: vsync,
      initialIndex: initialIndex,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  void toNextTab() => tabController.animateTo(
        min(
          currentTab + 1,
          length - 1,
        ),
      );

  void toPrevTab() => tabController.animateTo(
        max(
          currentTab - 1,
          0,
        ),
      );
}
