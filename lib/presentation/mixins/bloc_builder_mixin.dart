import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocBuilderMixin<S extends StatefulWidget, B extends StateStreamable<T>,
    T> on State<S> {
  B? get bloc => null;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, T>(
      bloc: bloc,
      buildWhen: buildWhen,
      builder: buildWithState,
    );
  }

  Widget buildWithState(BuildContext context, T state);

  bool buildWhen(T p, T c) => true;
}
