import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/helper_bloc/helper_bloc.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class BaseBlocPageState<P extends StatefulWidget, B extends BaseBloc>
    extends State<P> {
  late B bloc;

  bool get autoDispose => true;

  @override
  void initState() {
    super.initState();
  }

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

  Widget buildWithState(BuildContext context, HelperBlocState state);

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
