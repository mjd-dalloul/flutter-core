import 'package:flutter/material.dart';
import 'package:flutter_core/presentation/mixins/side_effect_mixin.dart';
import 'package:flutter_core/state_mangement/mobx_state_management/base_mobx/base_viewmodel.dart';
import 'package:flutter_core/utils/extensions/build_context_ext.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

abstract class MobxState<T extends StatefulWidget, V extends BaseViewmodel>
    extends State<T> with SideEffectMixin {
  final V viewModel = GetIt.I<V>();
  ThemeData? theme;
  TextTheme? textTheme;

  @override
  void initState() {
    super.initState();
    addContextHandlerDisposer(viewModel);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = context.theme;
    textTheme = theme?.textTheme;
  }

  @override
  void dispose() {
    disposeSideEffects();
    viewModel.dispose();
    super.dispose();
  }
}

abstract class ProviderMobxState<T extends StatefulWidget,
    V extends BaseViewmodel> extends State<T> with SideEffectMixin {
  V? viewmodel;
  ThemeData? theme;
  TextTheme? textTheme;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewmodel = Provider.of<V>(context, listen: false);
    addContextHandlerDisposer(viewmodel!);
    theme = context.theme;
    textTheme = theme?.textTheme;
  }

  @override
  void dispose() {
    disposeSideEffects();
    viewmodel?.dispose();
    super.dispose();
  }
}
