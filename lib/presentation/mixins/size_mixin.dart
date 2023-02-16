import 'package:flutter/material.dart';

mixin SizeMixin<S extends StatefulWidget> on State<S> {
  Size get size => _size!;

  double get width => _width!;

  double get height => _height!;

  MediaQueryData get mediaQueryData => _mediaQueryData!;

  Orientation get orientation => _orientation!;

  Size? _size;
  double? _width;
  double? _height;
  MediaQueryData? _mediaQueryData;
  Orientation? _orientation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _size = MediaQuery.of(context).size;
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    _mediaQueryData = MediaQuery.of(context);
    _orientation = MediaQuery.of(context).orientation;
  }
}
