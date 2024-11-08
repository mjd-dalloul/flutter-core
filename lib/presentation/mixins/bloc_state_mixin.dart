import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';

mixin BlocStateProviderMixin<S extends StatefulWidget, B extends BaseBloc>
    on State<S> {
  late B bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
