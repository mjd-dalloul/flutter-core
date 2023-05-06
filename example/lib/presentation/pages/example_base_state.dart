import 'package:flutter/material.dart';
import 'package:flutter_core/presentation/widgets/base_bloc_page.dart';
import 'package:flutter_core/state_mangement/bloc_state_management/base_bloc.dart';
import 'package:flutter_core/utils/failures/base_failure.dart';

abstract class ExampleBaseState<P extends StatefulWidget, B extends BaseBloc>
    extends BaseBlocProviderPage<P, B> {
  @override
  Widget onFailure(BaseFailure failure) => Center(
        child: Text(failure.failureMessage),
      );

  @override
  Widget onLoading() => const Center(child: CircularProgressIndicator());

  @override
  Widget onUnknownError(Object e) => Center(
        child: Text(e.toString()),
      );
}
