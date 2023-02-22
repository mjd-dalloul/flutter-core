import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';

mixin ContextCallbackMixin<S extends StatefulWidget, P extends BaseBloc>
    on State<S> {
  P get baseBloc;

  @override
  Widget build(BuildContext context) {
    return BlocListener<HelperBloc, HelperBlocState>(
      bloc: baseBloc.helperBloc,
      listenWhen: (p, c) => p.contextCallback != c.contextCallback,
      listener: (context, state) => state.contextCallback.call(context),
      child: buildChild(context),
    );
  }

  @override
  void dispose() {
    super.dispose();
    baseBloc.helperBloc.close();
  }

  Widget buildChild(BuildContext context);
}
