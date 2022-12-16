import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocProviderMixin<S extends StatefulWidget> on State<S> {
  List<BlocProvider> get providers;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: providers,
      child: Builder(builder: (context) {
        return super.build(context);
      }),
    );
  }
}
