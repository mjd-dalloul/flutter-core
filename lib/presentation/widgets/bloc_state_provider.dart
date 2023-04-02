import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/presentation/mixins/size_mixin.dart';
import 'package:flutter_core/presentation/mixins/theme_mixin.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';

abstract class BlocStateProvider<P extends StatefulWidget, B extends BaseBloc>
    extends State<P> with ThemeMixin, SizeMixin {
  late final B bloc;

  bool get autoDisposeBloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<B>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    if (autoDisposeBloc) {
      bloc.helperBloc.close();
      bloc.close();
    }
    super.dispose();
  }
}
