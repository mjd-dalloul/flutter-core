import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocListenerMixin<S extends StatefulWidget> on State<S> {
  List<BlocListener> get listeners;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: listeners,
      child: buildChild(context),
    );
  }

  Widget buildChild(BuildContext context);
}
