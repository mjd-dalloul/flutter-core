import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocListenerMixin<S extends StatefulWidget> on State<S> {
  final List<BlocListener> _listeners = [];

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: _listeners,
      child: super.build(context),
    );
  }

  void addListener(BlocListener blocListener) {
    _listeners.add(blocListener);
  }

  void addListeners(List<BlocListener> listeners) {
    _listeners.addAll(listeners);
  }
}
