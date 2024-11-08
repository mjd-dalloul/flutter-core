import 'package:flutter/material.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:get_it/get_it.dart';

mixin BlocStateGetItMixin<S extends StatefulWidget, B extends BaseBloc>
    on State<S> {
  late B bloc;

  @override
  void initState() {
    super.initState();
    bloc = GetIt.I<B>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }
}
