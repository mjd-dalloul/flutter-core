import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocListenerMixin<S extends StatefulWidget, B extends StateStreamable<T>,
    T> on State<S> {
  B? get bloc => null;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, T>(
      bloc: bloc,
      listener: listener,
      listenWhen: listenWhen,
      buildWhen: buildWhen,
      builder: buildWithState,
    );
  }

  void listener(context, state);

  bool listenWhen(T p, T c) => true;

  Widget buildWithState(BuildContext context, T state);

  bool buildWhen(T p, T c) => true;
}
