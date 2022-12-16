import 'package:flutter/cupertino.dart';
import 'package:flutter_core/presentation/mixins/size_mixin.dart';
import 'package:flutter_core/presentation/mixins/theme_mixin.dart';

abstract class BaseState<S extends StatefulWidget> extends State<S>
    with ThemeMixin, SizeMixin {}
