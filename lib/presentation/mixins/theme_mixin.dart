import 'package:flutter/material.dart';

mixin ThemeMixin<S extends StatefulWidget> on State<S> {
  late ThemeData theme;
  late TextTheme textTheme;
  late ColorScheme colorScheme;
  late Color errorColor;
  late Color primaryColor;
  late Color backgroundColor;
  late Color scaffoldBackgroundColor;
  late Color bottomAppBarColor;

  @override
  void initState() {
    super.initState();
    theme = Theme.of(context);
    textTheme = Theme.of(context).textTheme;
    colorScheme = Theme.of(context).colorScheme;
    errorColor = Theme.of(context).errorColor;
    primaryColor = Theme.of(context).primaryColor;
    backgroundColor = Theme.of(context).backgroundColor;
    scaffoldBackgroundColor = Theme.of(context).scaffoldBackgroundColor;
    bottomAppBarColor = Theme.of(context).bottomAppBarColor;
  }
}
