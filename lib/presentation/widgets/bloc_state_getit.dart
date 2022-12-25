import 'package:flutter/widgets.dart';
import 'package:flutter_core/presentation/mixins/size_mixin.dart';
import 'package:flutter_core/presentation/mixins/theme_mixin.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:get_it/get_it.dart';

abstract class BlocStateGetIt<P extends StatefulWidget, B extends BaseBloc>
    extends State<P> with ThemeMixin, SizeMixin {
  late final B bloc = GetIt.I<B>();

  bool get autoDispose => true;

  @override
  void dispose() {
    super.dispose();
    if (autoDispose) {
      bloc.helperBloc.close();
      bloc.close();
    }
  }
}
