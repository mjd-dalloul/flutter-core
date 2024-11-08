import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';

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

mixin BlocProviderMixin<S extends StatefulWidget, B extends BaseBloc>
    on State<S> {
  B get provider;

  bool get autoBlocDispose;

  @override
  void dispose() {
    if (autoBlocDispose) {
      provider.helperBloc.close();
      provider.close();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<B>.value(
      value: provider,
      child: Builder(builder: (context) {
        return buildChild(context);
      }),
    );
  }

  Widget buildChild(BuildContext context);
}
