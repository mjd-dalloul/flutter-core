import 'package:flutter/material.dart';

mixin SizeMixin<S extends StatefulWidget> on State<S> {
  late Size size;
  late double width;
  late double height;
  late MediaQueryData mediaQueryData;
  late Orientation orientation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    size = MediaQuery.of(context).size;
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    mediaQueryData = MediaQuery.of(context);
    orientation = MediaQuery.of(context).orientation;
  }
}
