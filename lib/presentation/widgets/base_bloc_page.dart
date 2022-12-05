import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_mangement/base_bloc/base_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_mangement/bloc_wrapper.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class BaseBlocPageState<P extends StatefulWidget> extends State<P> {
  BlocWrapper get blocBridge;

  bool get autoDispose => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    if (autoDispose) {
      blocBridge.baseBloc.close();
      blocBridge.bloc.close();
    }
    super.dispose();
  }

  Widget onLoading();

  Widget onFailure(BaseFailure failure);

  Widget onUnknownError(Object e);

  Widget buildWithState(BuildContext context, BaseBlocState state);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BaseBloc>.value(
          value: blocBridge.baseBloc,
        ),
        BlocProvider.value(
          value: blocBridge.bloc,
        ),
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<BaseBloc, BaseBlocState>(
          listenWhen: (p, c) => p.contextCallback != c.contextCallback,
          listener: (context, state) => state.contextCallback.call(context),
          buildWhen: (p, c) =>
              p.isLoading != c.isLoading ||
              c.unknownError != null ||
              c.failure != null,
          builder: (context, state) {
            if (state.isLoading) {
              return onLoading();
            } else if (state.failure != null) {
              return onFailure(state.failure!);
            } else if (state.unknownError != null) {
              return onUnknownError(state.unknownError!);
            } else {
              return buildWithState(context, state);
            }
          },
        );
      }),
    );
  }
}
