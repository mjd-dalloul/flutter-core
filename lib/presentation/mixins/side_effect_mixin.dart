import 'package:flutter/material.dart';
import 'package:flutter_core/state_mangement/mobx_state_management/base_mobx/base_viewmodel.dart';
import 'package:flutter_core/type_defs.dart';
import 'package:mobx/mobx.dart';

mixin SideEffectMixin<T extends StatefulWidget> on State<T> {
  final List<ReactionDisposer> _disposers = [];

  void addSideEffect(ReactionDisposer disposer) {
    _disposers.add(disposer);
  }

  void addSideEffects(List<ReactionDisposer> disposers) {
    _disposers.addAll(disposers);
  }

  void addContextHandlerDisposer(BaseViewmodel viewModel) {
    addSideEffect(
      reaction(
        (_) => viewModel.contextCallback,
        (ContextCallback? handler) {
          if (handler != null) {
            handler(context);
            viewModel.contextCallback = null;
          }
        },
      ),
    );
  }

  disposeSideEffects() {
    for (var d in _disposers) {
      d();
    }
  }
}
