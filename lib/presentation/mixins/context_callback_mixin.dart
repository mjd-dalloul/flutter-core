import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_cubit/base_cubit.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_cubit/base_cubit_state.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';

mixin ContextCallbackMixin<S extends StatefulWidget, P extends BaseBloc>
    on State<S> {
  P get baseBloc;

  bool get autoDisposeForHelperBloc;

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
    if (autoDisposeForHelperBloc) {
      baseBloc.helperBloc.close();
    }
  }

  Widget buildChild(BuildContext context);
}

mixin CubitContextCallbackMixin<S extends StatefulWidget> on State<S> {
  BaseCubit get baseCubit;

  bool get autoDisposeForHelperBloc => false;

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: baseCubit,
      listenWhen: (BaseCubitState p, BaseCubitState c) =>
          p.getContextCallback() != c.getContextCallback(),
      listener: (context, BaseCubitState state) =>
          state.getContextCallback()?.call(context),
      child: buildChild(context),
    );
  }

  @override
  void dispose() {
    super.dispose();
    if (autoDisposeForHelperBloc) {
      baseCubit.close();
    }
  }

  Widget buildChild(BuildContext context);
}
