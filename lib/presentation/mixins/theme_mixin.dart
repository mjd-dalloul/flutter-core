import 'package:flutter/material.dart';

mixin ThemeMixin<S extends StatefulWidget> on State<S> {
  ThemeData get theme => _theme!;

  TextTheme get textTheme => _textTheme!;

  ColorScheme get colorScheme => _colorScheme!;

  Color get errorColor => _errorColor!;

  Color get primaryColor => _primaryColor!;

  Color get backgroundColor => _backgroundColor!;

  Color get scaffoldBackgroundColor => _scaffoldBackgroundColor!;

  Color get bottomAppBarColor => _bottomAppBarColor!;

  ThemeData? _theme;
  TextTheme? _textTheme;
  ColorScheme? _colorScheme;
  Color? _errorColor;
  Color? _primaryColor;
  Color? _backgroundColor;
  Color? _scaffoldBackgroundColor;
  Color? _bottomAppBarColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _theme = Theme.of(context);
    _textTheme = Theme.of(context).textTheme;
    _colorScheme = Theme.of(context).colorScheme;
    _errorColor = Theme.of(context).colorScheme.error;
    _primaryColor = Theme.of(context).primaryColor;
    _backgroundColor = Theme.of(context).colorScheme.background;
    _scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    _bottomAppBarColor = Theme.of(context).bottomSheetTheme.backgroundColor;
  }
}
