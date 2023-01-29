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
    extends BaseState<P> with TickerProviderStateMixin {
  B get bloc;

  bool get autoDispose => true;

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
            late final Widget child;
            if (state.isLoading) {
              child = onLoading();
            } else if (state.failure != null) {
              child = onFailure(state.failure!);
            } else if (state.unknownError != null) {
              child = onUnknownError(state.unknownError!);
            } else {
              child = buildChild(context);
            }
            return AnimatedSwitcher(
              duration: switchingAnimationDuration,
              switchInCurve: switchInCurve,
              switchOutCurve: switchOutCurve,
              transitionBuilder: transitionBuilder,
              layoutBuilder: layoutBuilder,
              child: child,
            );
          },
        );
      }),
    );
  }

  Duration get switchingAnimationDuration => 500.asMilliseconds;

  Curve get switchInCurve => Curves.linear;

  Curve get switchOutCurve => Curves.linear;

  Widget transitionBuilder(Widget child, Animation<double> animation) =>
      AnimatedSwitcher.defaultTransitionBuilder.call(
        child,
        animation,
      );

  Widget layoutBuilder(Widget? currentChild, List<Widget> previousChildren) =>
      AnimatedSwitcher.defaultLayoutBuilder
          .call(currentChild, previousChildren);
}

abstract class BaseBlocGetItPage<P extends StatefulWidget, B extends BaseBloc>
    extends _BaseBlocPageState<P, B> {
  final B _bloc = GetIt.I<B>();

  @override
  B get bloc => _bloc;
}

abstract class BaseBlocProviderPage<P extends StatefulWidget,
B extends BaseBloc> extends _BaseBlocPageState<P, B> {
  @override
  B get bloc => context.read<B>();
}
