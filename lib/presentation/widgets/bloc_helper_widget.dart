import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@Deprecated('Wrap your widget with BlocBuilder')
abstract class BlocBuilderWidget<B extends StateStreamable<S>, S> extends StatelessWidget {
  const BlocBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
        buildWhen: buildWhen,
        builder: (context, state) => buildWithState(context, state));
  }

  Widget buildWithState(BuildContext context, S state);

  bool buildWhen(S p, S c) => true;
}

@Deprecated('Wrap your widget with BlocProvider')
abstract class BlocProviderWidget<T extends StateStreamableSource<Object?>>
    extends StatelessWidget {
  const BlocProviderWidget({Key? key}) : super(key: key);

  T get bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<T>(
      create: (_) => bloc,
      child: Builder(builder: (context2) {
        return buildChild(context2);
      }),
    );
  }

  Widget buildChild(context);
}

@Deprecated('Wrap your widget with BlocListener')
abstract class BlocListenerWidget<B extends StateStreamable<S>, S> extends StatelessWidget {
  const BlocListenerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listenWhen: listenWhen,
      listener: listener,
      child: buildChild(context),
    );
  }

  void listener(context, state);

  Widget buildChild(BuildContext context);

  bool listenWhen(S p, S c) => true;
}

@Deprecated('Wrap your widget with BlocConsumer')
abstract class BlocConsumerWidget<B extends StateStreamable<S>, S> extends StatelessWidget {
  const BlocConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      listenWhen: listenWhen,
      listener: listener,
      buildWhen: buildWhen,
      builder: buildWithState,
    );
  }

  void listener(context, state);

  Widget buildChild(BuildContext context);

  bool listenWhen(S p, S c) => true;

  Widget buildWithState(BuildContext context, S state);

  bool buildWhen(S p, S c) => true;
}
