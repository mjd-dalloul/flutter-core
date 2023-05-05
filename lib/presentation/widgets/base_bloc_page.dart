import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/presentation/widgets/base_state_widget.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';
import 'package:flutter_core/utils/extensions/int_ext.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';
import 'package:get_it/get_it.dart';

abstract class _BaseBlocPageState<P extends StatefulWidget, B extends BaseBloc>
    extends BaseState<P> {
  B get bloc;

  bool get autoDispose;

  @override
  void dispose() {
    if (autoDispose) {
      bloc.helperBloc.close();
      bloc.close();
    }
    super.dispose();
  }

  Widget onLoading();

  Widget onFailure(BaseFailure failure);

  Widget onUnknownError(Object e);

  Widget buildChild(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<B>.value(
          value: bloc,
        ),
        BlocProvider.value(
          value: bloc.helperBloc,
        ),
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<HelperBloc, HelperBlocState>(
          listenWhen: (p, c) => p.contextCallback != c.contextCallback,
          listener: (context, state) => state.contextCallback.call(context),
          buildWhen: (p, c) =>
              p.isLoading != c.isLoading ||
              p.unknownError != c.unknownError ||
              p.failure != c.failure,
          builder: (context, state) {
            return _getChild(state, context);
            // return AnimatedSwitcher(
            //   duration: switchingAnimationDuration,
            //   transitionBuilder: transitionBuilder,
            //   child: child,
            // );
          },
        );
      }),
    );
  }

  Widget _getChild(HelperBlocState state, BuildContext context) {
    if (state.isLoading) {
      return onLoading();
    } else if (state.failure != null) {
      return onFailure(state.failure!);
    } else if (state.unknownError != null) {
      return onUnknownError(state.unknownError!);
    } else {
      return buildChild(context);
    }
  }

  Duration get switchingAnimationDuration => 500.asMilliseconds;

  Widget transitionBuilder(Widget child, Animation<double> animation) =>
      FadeTransition(
        opacity: animation,
        child: child,
      );
}

abstract class BaseBlocGetItPage<P extends StatefulWidget, B extends BaseBloc>
    extends State<P> {
  final B _bloc = GetIt.I<B>();

  B get bloc => _bloc;

  @override
  void dispose() {
    bloc.close();
    bloc.helperBloc.close();
    super.dispose();
  }
}

abstract class BaseBlocProviderPage<P extends StatefulWidget,
    B extends BaseBloc> extends _BaseBlocPageState<P, B> {
  @override
  B get bloc => _bloc;
  late final B _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<B>();
  }
}
