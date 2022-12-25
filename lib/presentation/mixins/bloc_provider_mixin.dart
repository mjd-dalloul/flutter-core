import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocProvidersMixin<S extends StatefulWidget> on State<S> {
  List<BlocProvider> get providers;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: Builder(builder: (context) {
        return buildChild(context);
      }),
    );
  }

  Widget buildChild(BuildContext context);
}
